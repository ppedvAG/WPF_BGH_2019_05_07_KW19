   M S B A M L   `   `   `  ����I  ESteuerelemente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SteuerelementeSteuerelemente  5   	       Steuerelemente.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Steuerelemente     5   	   -   5          �Name$  wndMain��5	   	    � Title$ 
MainWindow��5   	   $��719.667��6   $��314.325��6-   .��5
      �� .+�5   
   �� $
��Text��6   
���   �$��2q�5      �� 5   
   $��	TextBlock��6   $��20(�5      $
��Bold"�5      �� 5   
   -   5        $��
Klick Mich��5      
���  ��5      �� 5   
   $-��'C:\Users\kh2\Desktop\Material\ppedv.bmp��6   $��Uniform=�5      $	��150��5      �� 5   
   $��Hallo��6   $	��100��5       �� AcceptsReturn .  �� 
AcceptsTab .  �� TextWrapping$ WrapWithOverflow=�5      $��Visible=�5       .��5"       � ContextMenu 5#      �� 5$      .@�5%      m� $��Kopieren��6   5&      .��5'   #   5(      �� 5*   
    �� SelectedIndex$ 1��6    �� 
IsEditable . .@�5,      �� $��Item1��6   �� 5-      $��Item2��6   5.      	� 50   
   $
��Eins��6    	� 	GroupName$ Auswahl��6%   	� 51   
   $
��Zwei��6   $ Auswahl��6%   �� 53   
   $��Hak mich ab��6   	 d� IsThreeState	 . 
 d� 	IsChecked
 54      Z� 55      �� 57   
   �� 59   
    � Minimum$ 0Q�6    � Maximum$	 100Q�5:       �� TickPlacement$ BottomRight=�5;       �� TickFrequency$ 10Q�5<       �� IsSnapToTickEnabled .  � Value$ 50.78Q�5>      � 5@   
   $��15��6   $ 0Q�5A      $	 100Q�5B      $ 50Q�5C       � IsIndeterminate . 5D      o� 5F   
   .@�5G      m� $��Datei��6   .@�5H      m� $��	Speichern��6   �� 5I      m� 5J      $��
Untermenü��6   .@�5K      m� $��Eintrag1��6   5L      5M      5N      +  %System.Windows.Controls.Ribbon.Ribbon  5P   
      ApplicationMenu 5Q      :  4System.Windows.Controls.Ribbon.RibbonApplicationMenu  5R      .@�5S      >  8System.Windows.Controls.Ribbon.RibbonApplicationMenuItem  $��	Speichern��60   5T      .@�5V      .  (System.Windows.Controls.Ribbon.RibbonTab  $��
Bearbeiten��6   .@�5W      0  *System.Windows.Controls.Ribbon.RibbonGroup  $��Kopieren und Co��6   .@�5X      1  +System.Windows.Controls.Ribbon.RibbonButton  $��20��6#   $��50��6/   $��Kopieren��5Y   #   5Z      5[      5\      5^      5_      