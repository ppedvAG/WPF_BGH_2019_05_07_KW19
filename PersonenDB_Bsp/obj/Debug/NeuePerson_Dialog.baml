   M S B A M L   `   `   `  ����I  EPersonenDB_Bsp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:PersonenDB_BspPersonenDB_Bsp  5   	   &     PersonenDB_Bsp.NeuePerson_Dialog   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:PersonenDB_Bsp     5   	   -   5          �Name$  wndMain��5   	    � Title$ Neue Person��5   	   $��371.178��6   $��382.629��6.    � Topmost .  � WindowStartupLocation$ CenterScreen=�5	         
styWndMain#��[  5
   	    � 	Resources 5       S� ObjectInstance!  System.Windows.Media.Colors S� 
MethodName  colorsProperties#  PersonenDB_Bsp.EnumToBoolConv  	enum2bool  ctpError �� Orientation ��Name	 ��Name
 � AllowsTransparency � PlacementTarget �� ElementName �� Path �� Mode �� Padding��%�  &	       &	 6     &	 I     S� 5   
   "  6   $ GetProperties��6>   6Y     5   
   6   �� 5   
   .R�5      �� .+�5      �� $ 
Horizontal=�6   .+�5      �� $ bdrAep��6C   
���  ��$��1q�6/   ._�5      �� $		 aep��64   5      �� 5      $��!��6    
���  ��$��15(�6:   $	��3,0q�6H   $
��Bold"�5       $��Center=�62   5      � 5      
 . $
��Fade=�62   $��Bottom=�5       5      �� $ bdrAep����5      �� $	 aep��$  AdornedElement.IsMouseOver�$ OneWay=�.��5       �� 
�������
���  ��$ 2q�5!   D   ��5        �� $	 aep��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�5!   D   5"      5#      5$      5&      .��5(      � $��10q�6    5)   
    �� MergedDictionaries �� Source�� 5*       5+      �� 5,      $ Styles.xaml?�6)   %    5.       � ColumnDefinitions 50   
   �� 51      $
��Auto �6   �� 52      $��* �6    � RowDefinitions 54   
   �� 55      $
��Auto �6   �� 56      $
��Auto �6   �� 57      $
��Auto �6   �� 58      $
��Auto �6   �� 59      $
��Auto �6   �� 5:      $
��Auto �6   �� 5;      $��* �6   �� 5<      $
��Auto �6   .+�5?   
   �� $��0��6   $��Vorname��6!   �� 5@   
   $��1��6   $��Nachname��6!   �� 5A   
   $��2��6   $��
Geschlecht��6!   $	��Top=�5B      �� 5C   
   $��3��6   $��Geburtsdatum��6!   �� 5D   
   $��4��6   $��Lieblingsfarbe��6!   �� 5E   
   $��5��6   $��Verheiratet��6!   �� 5G   
   -   5         ��Name$ 
tbxVorname��5G      $��1��5H      $��0��6"    =� ErrorTemplate# [ 5J      ��5I      �� *	Vorname+ �� ValidatesOnDataErrors .  �� UpdateSourceTrigger$ PropertyChanged=�5J      �� 5K   
   -   5        $ tbxNachname��5K      $��1��5L      $��1��6"   # [ 5N      ��5M      �� *
Nachname+ . $ PropertyChanged=�5N      �� 5O   
   $��1��6   $��2��6%   $��2q�5P      .+�5Q      	� -   5         	�Name$
 rbtM��5Q      $��M��6(    	� 	GroupName$ rgpGeschlecht��64    d� 	IsChecked 5R      �� *
Geschlecht+ �� 	Converter# [    PersonenDB_Bsp.Gender   	Männlich �� ConverterParameter# Z 	� 5S      -   5        $
 rbtW��5S      $��W��6(   $ rgpGeschlecht��64    5T      �� *
Geschlecht+# [    Weiblich# Z 	� 5U      -   5        $
 rbtD��5U      $��D��6(   $ rgpGeschlecht��64    5V      �� *
Geschlecht+# [    Divers# Z 5W      (  "System.Windows.Controls.DatePicker  5X   
   -   5           Name$  dtpGeburtsdatum��5X      $��1��5Y      $��3��6%   # [ 5[      !   SelectedDate! 5Z      �� *Geburtsdatum+ . $ PropertyChanged=�5[      �� 5\   
   -   5        " ��Name$" cbbLieblingsfarbe��5\      $��1��5]      $��4��6#   # �� SelectedValuePath$
# Name��5`      # [ 5a      ��5^      �� $ �� Source#$ [ % �� SelectedValue% 5_      �� *Lieblingsfarbe+ . ��5b      �� 5c      .R�5d      �� $ 
Horizontal=�6!   .+�5e      �� $��10��6:   $��10��6F   $	��5,0q�6Q   ��6$   �� *Name+6Q   �� 5f      ��6$   �� *Name+5g      5h      5n      �� 5o   
   -	   5        & ��Name$& chbVerheiratet��5o      $��1��5p      $��5��6#    5q      �� *Verheiratet+5r      � 5s   
   $��0��6   $��7��6$   $��2��61   $��Right=�5t      .+�5u      �� -
   5        ' ��Name$' btnOK��5u      $��OK��5v      ��5w      �� 5x      ( �� 
TargetType"( ��6   .�5y      �� ) �� Property) � ��* �� Value$	* 140��62   �� 5z      ) � ��$* 5,0,0,0q�63   �� 5{      ) � ��  doubleFontSize#* [ 65   �� 5|      ) � {�* .  66   + �� Triggers+ 5}      ^� 5~      , ^� 
Conditions, 5   "   �� 5�   &   - �� Binding- 60   �� $ 
tbxVorname��$ (Validation.HasError)�. �� Value	. False6w   �� 5�   &   - 60   �� $ tbxNachname��$ (Validation.HasError)�	. False6x   �� 5�   &   - 60   �� $ dtpGeburtsdatum��$ (Validation.HasError)�	. False6|   �� 5�   &   - 60   �� $ cbbLieblingsfarbe��$ (Validation.HasError)�	. False6~   .0�5�   "   �� ) � {�* . 6>   5�      5�      5�      �� 5�      -   5        $' 	btnCancel��5�      $��	Abbrechen��5�      6)   5�      5�      5�      