   M S B A M L   `   `   `  ����N  JMVVM_PersonenDB_Bsp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MVVM_PersonenDB_Bsp.ViewMVVM_PersonenDB_Bsp.View  5   	   9!clr-namespace:MVVM_PersonenDB_BspMVVM_PersonenDB_Bsp  5   	   )    #MVVM_PersonenDB_Bsp.View.DetailView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:MVVM_PersonenDB_Bsp.View     5   	   2root!clr-namespace:MVVM_PersonenDB_Bsp     5   	   -   5          �Name$  wndMain��5   	    � Title$ Neue Person��5	   	   $��261.557��6   $��282.337��6.    � Topmost .  � WindowStartupLocation$ CenterScreen=�5
         
sylWndMain#��[  5   	    � 	Resources 5       �� 
TargetType �� Property �� Value(  "System.Windows.Controls.DatePicker S� ObjectInstance!  System.Windows.Media.Colors	 S� 
MethodName  colorsProperties(  "MVVM_PersonenDB_Bsp.EnumToBoolConv  	enum2bool  ctpError
 �� Orientation ��Name ��Name � AllowsTransparency � PlacementTarget �� ElementName �� Path �� Mode �� Padding��%�  '��       '�� r     '�� �     '	� .    '  z    '�� �    '�� X    '�� y    &	 �    &	 �    &	     �� 5   
   " ��6   .�5      ��  � ��$	 100��6&   �� 5       � ��$ 5,0,0,0q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$ Center=�62   �� 5       � ��$ 0,0,5,0q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$ 2q�6'   5      �� 5   
   " 	�6   .�5      ��  � ��$ Center=�69   5      �� 5   
   "  6   .�5      ��  � ��$ 2q�6'   �� 5       � ��$ Center=�62   5       �� 5!   
   " ��6   .�5"      ��  � ��$ 2q�6'   �� 5#       � ��$ Center=�62   5$      �� 5%   
   " ��6   5&      �� 5'   
   " ��6   .�5(      ��  � ��$ Center=�62   5)      S� 5+   
   "  6   $	 GetProperties��6>   6Y     5-   
   6   �� 5/   
   .R�50      �� .+�51      �� $
 
Horizontal=�6   .+�52      �� $ bdrAep��6C   
���  ��$��1q�6/   ._�53      �� $	 aep��64   54      �� 55      $��!��6    
���  ��$��15(�6:   $	��3,0q�6H   $
��Bold"�56       $��Center=�62   57      � 58       . $
��Fade=�62   $��Bottom=�5;       59      �� $ bdrAep����5:      �� $	 aep��$  AdornedElement.IsMouseOver�$ OneWay=�.��5<      �� 
�������
���  ��$ 2q�5=   D   ��5<       �� $	 aep��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�5=   D   5>      5?      5@      5B      .��5D      � -   5         �Name$ grdMain��5D      $��10q�6    � ColumnDefinitions 5E   
   �� 5F      $
��Auto �6   �� 5G      $��* �6    � RowDefinitions 5I   
   �� 5J      $
��Auto �6   �� 5K      $
��Auto �6   �� 5L      $
��Auto �6   �� 5M      $
��Auto �6   �� 5N      $
��Auto �6   �� 5O      $
��Auto �6   �� 5P      $��* �6   �� 5Q      $
��Auto �6   .+�5T   
   �� $��0��6   $��Vorname��6!   �� 5U   
   $��1��6   $��Nachname��6!   �� 5V   
   $��2��6   $��
Geschlecht��6!   $	��Top=�5W      �� 5X   
   $��3��6   $��Geburtsdatum��6!   �� 5Y   
   $��4��6   $��Lieblingsfarbe��6!   �� 5Z   
   $��5��6   $��Verheiratet��6!   �� 5\   
   -   5         ��Name$ 
tbxVorname��5\      $��1��5]      $��0��6"    =� ErrorTemplate# [ 5_      ��5^      �� *AktuellePerson.Vorname+ �� ValidatesOnDataErrors .  �� UpdateSourceTrigger$ PropertyChanged=�5_      �� 5`   
   -   5        $ tbxNachname��5`      $��1��5a      $��1��6"   # [ 5c      ��5b      �� *AktuellePerson.Nachname+ . $ PropertyChanged=�5c      �� 5d   
   $��1��6   $��2��6%   $��2q�5e      .+�5f      	� -   5         	�Name$
 rbtM��5f      $��M��6(    	� 	GroupName$ rgpGeschlecht��64    d� 	IsChecked 5g      �� *AktuellePerson.Geschlecht+ �� 	Converter# [     MVVM_PersonenDB_Bsp.Gender   	Männlich �� ConverterParameter# Z 	� 5h      -   5        $
 rbtW��5h      $��W��6(   $ rgpGeschlecht��64    5i      �� *AktuellePerson.Geschlecht+# [     Weiblich# Z  	� 5j      -   5        $
 rbtD��5j      $��D��6(   $ rgpGeschlecht��64    5k      �� *AktuellePerson.Geschlecht+# [ !   Divers# Z! 5l        5m   
   -   5        "  Name$" dtpGeburtsdatum��5m      $��1��5n      $��3��6%   # [ 5p      #   SelectedDate# 5o      �� *AktuellePerson.Geburtsdatum+ . $ PropertyChanged=�5p      �� 5q   
   -	   5        $ ��Name$$ cbbLieblingsfarbe��5q      $��1��5r      $��4��6#   % �� SelectedValuePath$
% Name��5u      # [ 5v      ��5s      �� & �� Source#& [ ' �� SelectedValue' 5t      �� *AktuellePerson.Lieblingsfarbe+ . ��5w      �� 5x      .R�5y      �� $
 
Horizontal=�6!   .+�5z      �� $��10��6:   $��10��6F   $	��5,0q�6Q   ��6$   �� *Name+6Q   �� 5{      ��6$   �� *Name+5|      5}      5      �� 5�   
   -
   5        ( ��Name$( chbVerheiratet��5�      $��1��5�      $��5��6#    5�      �� *AktuellePerson.Verheiratet+5�      � 5�   
   $��0��6   $��7��6$   $��2��61   $��Right=�5�      .+�5�      �� -   5        ) ��Name$) btnOK��5�      $��OK��5�      ��5�      �� *OkCmd+��5�      �� * �� RelativeSource* �� + �� Mode$+ FindAncestor=�, �� AncestorType$, WindowL���5�      �� 5�      " ��6   .�5�      ��  � ��$	 100��62   �� 5�       � {� .  66   - �� Triggers- 5�      ^� 5�      . ^� 
Conditions. 5�   "   �� 5�   &   / �� Binding/ 60   �� $ 
tbxVorname��$ (Validation.HasError)�0 �� Value	0 False6w   �� 5�   &   / 60   �� $ tbxNachname��$ (Validation.HasError)�	0 False6x   �� 5�   &   / 60   �� $ dtpGeburtsdatum��$ (Validation.HasError)�	0 False6|   .0�5�   "   ��  � {� . 6>   5�      5�      5�      �� 5�      -   5        $) 	btnCancel��5�      $��	Abbrechen��5�      1 �� IsCancel1 . 5�      5�      5�      5�      