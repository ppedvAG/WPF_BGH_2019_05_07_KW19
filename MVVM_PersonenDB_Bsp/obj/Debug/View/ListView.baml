   M S B A M L   `   `   `  ����N  JMVVM_PersonenDB_Bsp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MVVM_PersonenDB_Bsp.ViewMVVM_PersonenDB_Bsp.View  5   	   9!clr-namespace:MVVM_PersonenDB_BspMVVM_PersonenDB_Bsp  5   	   '    !MVVM_PersonenDB_Bsp.View.ListView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   2local&clr-namespace:MVVM_PersonenDB_Bsp.View  5   	   ,root!clr-namespace:MVVM_PersonenDB_Bsp  5   	     � Title$  Personen Datenbank��5
   	   $��589.151��6$   $��794.363��65      
sylWndMain#��[  5   	    � 	Resources 5      *  $System.Windows.Controls.DataGridCell �� 
TargetType 
 styDgd �� Property �� Value+   %MVVM_PersonenDB_Bsp.StringToBrushConv  string2brush��%�   &	       '�� L     &	 �     �� 5   
   "  6   .�5      ��  � ��$ Center=�69   5      �� 5   
   " ��6   .�5      ��  � ��$	 100��6&   �� 5       � ��$ 5,0,0,0q�6'   5        5   
   6!   5      .��5      ]�  5   
    �� MergedDictionaries�� 5       5      %    5      .+�5   
   o� $	��Top=�6   ��6$   Z� .@�5      m� $��Datei��6   .@�5      m� $��Beenden��6    m� Command 6,   �� *SchließenCmd+5       m� 5!      $��
Bearbeiten��6   .@�5"      m� $��Neue Person��6    60   �� *NeuCmd+m� 5#      $��Ändere Person��6    62   �� *
ÄndernCmd+ m� CommandParameter 6P   ��  �� ElementName$ dgdPersonen��	 �� Path$	 SelectedValue�m� 5$      $��Lösche Person��6    62   �� *LöschenCmd+ 6Q   �� $ dgdPersonen��$	 SelectedValue�5%      5&      � 5'   
   $��Bottom=�6   $��5,0,5,5q�6,   $��Right=�6=   .+�5(      �� -   5        
 ��Name$
 btnNeu��5(      $��Neue Person��6%   ��6;   �� *NeuCmd+�� 5)      -   5        $
 
btnÄndern��5)      $��Ändere Person��6(   ��6@   �� *
ÄndernCmd+��6^   �� $ dgdPersonen��$	 SelectedValue��� 5*      -   5        $
 btnLöschen��5*      $��Lösche Person��6)   ��6A   �� *LöschenCmd+��6`   �� $ dgdPersonen��$	 SelectedValue�5+      &   System.Windows.Controls.DataGrid  5,   
   -   5          Name$ dgdPersonen��5,      $��5q�5-         AutoGenerateColumns .   J� IsManipulationEnabled .     
IsReadOnly . ��5/      �� *PersonenListe+   Columns 50      0  *System.Windows.Controls.DataGridTextColumn  51      ,  &System.Windows.Controls.DataGridColumn   Header$ Vorname��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6R   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *	Vorname+6R     52      $ Nachname��6%   $ * 6T    67   �� *
Nachname+6T     53      $ 
Geschlecht��6%   $
 Auto 6X    69   �� *
Geschlecht+6X     54      $ Geburtsdatum��6%   $
 Auto 6u    6;   �� *Geburtsdatum+ �� StringFormat$ 
dd.MM.yyyy��6u     55      $ Lieblingsfarbe��6%   $
 Auto 6`    6=   �� *Lieblingsfarbe+   	CellStyle 56      �� 57      "  6    .�58      ��  � �� 6;   �� *Lieblingsfarbe+ �� 	Converter# [ 59      5;      4  .System.Windows.Controls.DataGridCheckBoxColumn  5<      $ Verheiratet��6)   $
 Auto 6^    6>   �� *Verheiratet+6^   .	  (System.Windows.Interactivity.Interaction 	  Triggers 5>      /
  )System.Windows.Interactivity.EventTrigger
  5?       
  	EventName$ MouseDoubleClick��6!   .  (System.Windows.Interactivity.TriggerBase   Actions. 5@      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6,   �� *
ÄndernCmd+   CommandParameter 5A   ,   �� $ dgdPersonen��$	 SelectedValue�5B       � ContextMenu 5D      �� 5E      .@�5F      m� $��Neue Person��6    64   �� *NeuCmd+m� 5G      $��Ändere Person��6    66   �� *
ÄndernCmd+ 6T   ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType" ��$#	 PlacementTarget.SelectedValue�m� 5H      $��Lösche Person��6    66   �� *LöschenCmd+ 6U   ��  �� $ FindAncestor=�" ��$#	 PlacementTarget.SelectedValue�5I      5K      5L      5M      