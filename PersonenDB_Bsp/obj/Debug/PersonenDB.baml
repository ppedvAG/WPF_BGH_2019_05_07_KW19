   M S B A M L   `   `   `  ����I  EPersonenDB_Bsp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:PersonenDB_BspPersonenDB_Bsp  5   	       PersonenDB_Bsp.PersonenDB   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:PersonenDB_Bsp     5   	     � Title$  
PersonenDB��5   	   $��589.151��6   $��794.363��6-      
styWndMain#��[  5	   	    � 	Resources 5
      (  "PersonenDB_Bsp.SelectionToBoolConv  selection2bool*  $System.Windows.Controls.DataGridCell �� 
TargetType 
 styDgd �� Property �� Value��%s   &	       &	        5   
   6$   �� 5   
   "  6   .�5      ��  � ��$ Center=�69   5      5      .��5      ]�  5   
    �� MergedDictionaries �� Source�� 5       5      �� 5      $ Styles.xaml?�6)   %    5      .+�5   
   o� $	��Top=�6   .@�5      m� $��Datei��6   .@�5      m� -   5        $��Beenden��5      6,   5      m� 5      $��
Bearbeiten��6   .@�5      m� -   5        $��Neue Person��5      60   m� 5      -   5        $��Ändere Person��5      {�5      ��  �� ElementName$ dgdPersonen�� �� Path$ SelectedItem�	 �� 	Converter#	 [ m� 5       -   5        $��Lösche Person��5       {�5!      �� $ dgdPersonen��$ SelectedItem�#	 [ 5"      5#      � 5$   
   $��Bottom=�6   $��5,0,5,5q�6,   $��Right=�6=   .+�5%      �� -   5        
 ��Name$
 btnNeu��5%      $��Neue Person��6%   6;   �� 5&      -   5        $
 
btnÄndern��5&      $��Ändere Person��6(   {�5'      �� $ dgdPersonen��$ SelectedItem�#	 [ �� 5(      -   5        $
 btnLöschen��5(      $��Lösche Person��6)   {�5)      �� $ dgdPersonen��$ SelectedItem�#	 [ 5*      &   System.Windows.Controls.DataGrid  5+   
   -   5          Name$ dgdPersonen��5+      $��5q�5,         AutoGenerateColumns .   J� IsManipulationEnabled .     
IsReadOnly . ��5.      �� *PersonenListe+��50      �� 51      "  6   .�52      -	   5        53         Columns 55      0  *System.Windows.Controls.DataGridTextColumn  56      ,  &System.Windows.Controls.DataGridColumn   Header$ Vorname��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6R   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *	Vorname+6R     57      $ Nachname��6%   $ * 6T    67   �� *
Nachname+6T     58      $ 
Geschlecht��6%   $
 Auto 6X    69   �� *
Geschlecht+6X     59      $ Geburtsdatum��6%   $
 Auto 6u    6;   �� *Geburtsdatum+ �� StringFormat$ 
dd.MM.yyyy��6u     5:      $ Lieblingsfarbe��6%   $
 Auto 6`    6=   �� *Lieblingsfarbe+6`   4  .System.Windows.Controls.DataGridCheckBoxColumn  5;      $ Verheiratet��6)   $
 Auto 6^    6>   �� *Verheiratet+6^    � ContextMenu 5=      �� 5>      .@�5?      m� -
   5        $��Neue Person��5?      64   m� 5@      -   5        $��Ändere Person��5@      {�5A      �� $ dgdPersonen��$ SelectedItem�#	 [ m� 5B      -   5        $��Lösche Person��5B      {�5C      �� $ dgdPersonen��$ SelectedItem�#	 [ 5D      5F      5G      5H      