   M S B A M L   `   `   `  ����Q  MRalseiDatingSimulator2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:RalseiDatingSimulator2RalseiDatingSimulator2  5   	   '    !RalseiDatingSimulator2.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:RalseiDatingSimulator2     5   	     � Title$%  Ralsei Dating Simulator ⭐2⭐��5   	   $	��450��6-   $	��550��6:   .��5	      � 
���   �.+�5
   
   �� -   5         ��Name$ 
RalseiFace��5
      $
��Left=�6$   $	��134��6?   $��
42,202,0,0q�6L   $	��Top=�6`   $	��133��6x   $��/default.png��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��Uniform=�6�   z�5      V� 5      .~�5      �� �� 5      �� 5       �� Angle$ 0.113Q�6&   T� 5      5      5      �� 5   
   -   5         ��Name$ 	OutputBox��5      $
��Left=�6'   $��90��6B   $��186,225,0,0q�6N   
�������$	��Top=�6r   $	��326��6�    J� OpacityMask �	#FF1D1D1D���	#FF0E0E0E �� RadiusX$ 10��6�    �� RadiusY$ 10��6�   �� 5   
   -   5         ��Name$ 
OutputText��5      $��	Hello! :3��6$   $
��Left=�68   $��186,225,0,0q�6S   $	��Top=�6h   $��90��6�   $	��326��6�   
�������$��18(�6�   �� 5   
   -   5        	 ��Name$	 	EnterText��5      $
��Left=�6%   $��	45,25,0,0q�6@   $��Say something to Ralsei��6S   
 �� TextWrapping$

 Wrap=�6r   $	��Top=�6�   $	��467��6�   $��90��6�   ���	#FF151515
�������$��16(�6�   
������� �� TextAlignment$ Center=�6  $
��Left=�6  $��Center=�6;  6]  �� 5   
   -   5         ��Name$ 	SendInput��5      $��Speak thy words��6$   $
��Left=�6>   $��
45,140,0,0q�6Y   $	��Top=�6m   $��34��6�   $	��467��6�   ���	#FF252525
�������
�������$��14(�6�   6�   �� 5   
   -   5        $ YeahGoodAnswer��5      $��Good Answer��6)   $
��Left=�6?   $��194,335,0,0q�6Z   $	��Top=�6o   $��48��6�   $	��127��6�   ���	#FF272727���	#FF23FF00���	#FF23FF006�   �� 5   
   -   5        $ NoBadAnswer��5      $��
Bad Answer��6&   $
��Left=�6;   $��373,335,0,0q�6V   $	��Top=�6k   $��48��6�   $	��127��6�   ���	#FF272727
���  ��
���  ��6�   �� 5   
   -   5        $ DialogBackground��5      $
��Left=�6.   $	��285��6I   $��65,0,0,0q�6V   ���	#FF707070$��Center=�6{   $	��408��6�   
�������$ 10��6�   $ 10��6�   $��5��6�   $y�Hidden=�6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      �� 5   
   -	   5        $ DialogTitle��5      $��Title��6%   $
��Left=�65   $��	73,68,0,0q�6P   $	��Top=�6c   $	��390��6{   $��33��6�   $��20(�6�   $
��Bold"�6�   $y�Hidden=�6�   ��6�   Z� 6�   �� 5    
   -
   5        $ DialogContent��5       $
��Left=�6'   $��	75,99,0,0q�6B   $	��Top=�6U   $	��207��6m   $	��388��6z   $��14(�6�   $y�Hidden=�6�   �� 5!   
   -   5        $ DialogClose��5!      $��OK��6&   $
��Left=�63   $��353,312,0,0q�6N   $	��Top=�6c   $��24��6{   $	��107��6�   $y�Hidden=�6�   �� 5"   
   -   5        $	 DialogInput��5"      $
��Left=�6'   $��
77,247,0,0q�6B   $��Enter correct answer��6V   $

 Wrap=�6r   $	��Top=�6�   $	��382��6�   $��58��6�   $��16(�6�   ���	#FFE8E8E8
���   � �� SelectionBrush �	#FFC5E5FF$ Center=�6
  $
��Left=�6!  $��Center=�6C  $y�Hidden=�6e  �� 5#   
   -   5        $ RebuildPipelineButton��5#      $��Rebuild Pipeline��60   $
��Left=�6K   $��
10,359,0,0q�6f   $	��Top=�6z   $��24��6�   $	��107��6�   ���	#FF3C3C3C
�������
�������6�   5%      5&      