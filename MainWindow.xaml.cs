using System;
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

namespace RalseiDatingSimulator2
{
    public partial class MainWindow : Window
    {
        //RalseiConversationAI.ModelInput sampleData;
        //RalseiConversationAI.ModelOutput result;

        public MainWindow()
        {
            InitializeComponent();
            ResizeMode = ResizeMode.NoResize;
        }

        private void ProcessInput(object sender, RoutedEventArgs e)
        {
            var sampleData = new RalseiConversationAI.ModelInput()
            {
                Col0 = EnterText.Text
            };

            var result = RalseiConversationAI.Predict(sampleData);

            OutputText.Content = result.PredictedLabel;
        }

        private void EnterText_Focused(object sender, RoutedEventArgs e)
        {
            OutputText.Content = "Yes?";
        }
    }
}
