using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.ML;

namespace RalseiDatingSimulator2
{
    public partial class MainWindow : Window
    {
        string input = "";
        string output = "";

        public MainWindow()
        {
            InitializeComponent();
            ResizeMode = ResizeMode.NoResize;

            DialogTitle.Visibility = Visibility.Hidden;
            DialogContent.Visibility = Visibility.Hidden;
            DialogClose.Visibility = Visibility.Hidden;
            DialogInput.Visibility = Visibility.Hidden;
            DialogBackground.Visibility = Visibility.Hidden;
        }

        private void ProcessInput(object sender, RoutedEventArgs e)
        {
            var sampleData = new RalseiConversationAI.ModelInput()
            {
                Col0 = EnterText.Text
            };

            var result = RalseiConversationAI.Predict(sampleData);

            input = EnterText.Text;
            output = result.PredictedLabel;

            OutputText.Content = result.PredictedLabel;
        }

        private void EnterText_Focused(object sender, RoutedEventArgs e)
        {
            OutputText.Content = "Yes?";
        }

        private void GoodAnswer_Clicked(object sender, RoutedEventArgs e)
        {
            OutputText.Content = "Yay! I'm trying to improve all the time!";

            AddData();
        }

        private void BadAnswer_Clicked(object sender, RoutedEventArgs e)
        {
            OutputText.Content = "I'll try to do better next time :)";

            OpenDialog("Bad answer :(", "How can I improve my answer?\n\nInput: \"" + input + "\"");
        }

        private void DialogClose_Clicked(object sender, RoutedEventArgs e)
        {
            DialogTitle.Visibility = Visibility.Hidden;
            DialogContent.Visibility = Visibility.Hidden;
            DialogClose.Visibility = Visibility.Hidden;
            DialogInput.Visibility = Visibility.Hidden;
            DialogBackground.Visibility = Visibility.Hidden;

            output = DialogInput.Text;
            AddData();
        }

        private void RebuildPipeline_Clicked(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("This doesn't work yet (if it ever will)", "no");

            /*
            MLContext mlContext = new MLContext();
            mlContext.Data.LoadFromTextFile("NewMachineLearningData.txt");

            RalseiConversationAI.BuildPipeline(mlContext);
            */
        }

        void OpenDialog(string title, string content)
        {
            DialogTitle.Content = title;
            DialogContent.Content = content;

            DialogTitle.Visibility = Visibility.Visible;
            DialogContent.Visibility = Visibility.Visible;
            DialogClose.Visibility = Visibility.Visible;
            DialogInput.Visibility = Visibility.Visible;
            DialogBackground.Visibility = Visibility.Visible;
        }

        void AddData()
        {
            string path = @"NewMachineLearningData.csv";

            if (!File.Exists(path))
            {
                // Create a file to write to.
                using (StreamWriter sw = File.CreateText(path))
                {
                    sw.WriteLine(input + "," + output);
                }
            }
            else
            {
                using (StreamWriter sw = File.AppendText(path))
                {
                    sw.WriteLine(input + "," + output);
                }
            }
        }
    }
}
