   M S B A M L   `   `   `  ����K  GLibraries_reader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Libraries_readerLibraries_reader  5   	   =#clr-namespace:Libraries_reader.ViewLibraries_reader.View  5   	   !    Libraries_reader.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:Libraries_reader     5   	   5views#clr-namespace:Libraries_reader.View     5   	     � Title$  Knihovna��5	   	   $	��470��6   $	��650��6'   
������� � 
ResizeMode$ NoResize=�6F   .��5      � .+�5   
   �� -   5        $��Načíst znovu��5      $
��Left=�6(   $��
10,330,0,0q�6C   $	��Top=�5      $	��100��6)   $��30��65   
���   �
���   �
�������5   8   �� 5   
   -   5        $��	Vytvořit��5      $
��Left=�6$   $��
10,365,0,0q�6?   $	��Top=�5      $	��100��6)   $��25��65   
�������
���   �5   $   $   Libraries_reader.View.DataView  5   
   -   5          Name$ DataViewControl��5      $��120,58,-120,-58q�64   *   $Libraries_reader.View.Filtering_view  5   
   $��-262,-35,262,35q�6   � 5   
   -   5         �Name$ New_data_grid��5      $
��Left=�6&   $��25��6A   $��120,365,0,0q�6M   $	��Top=�6b   $	��900��6z   $��2��6�   .+�5      �� -   5         ��Name$ TB_NewData1��5      $
��Left=�6+   $��25��6F    �� TextWrapping$
 Wrap=�6R   $��Center=�6f   $��50��6�   $��-��6�    �� TextAlignment$ Center=�6�    �� 
IsReadOnly . $��30,0,0,0q�6�   �� 5      -   5        $ TB_NewData2��5      $
��Left=�6+   $��25��6F   $
 Wrap=�6R   $��Center=�6f   $	��100��6�   $��80,0,0,0q�6�   �� 5      -   5        $ TB_NewData3��5      $
��Left=�6+   $��25��6F   $
 Wrap=�6R   $��Center=�6f   $	��100��6�   $��	180,0,0,0q�6�   �� 5      -   5        $ TB_NewData4��5      $
��Left=�6+   $��25��6F   $
 Wrap=�6R   $��Center=�6f   $	��100��6�   $��	280,0,0,0q�6�   �� 5      -	   5        $ TB_NewData5��5      $
��Left=�6+   $��25��6F   $
 Wrap=�6R   $��Center=�6f   $	��100��6�   $��	380,0,0,0q�6�   5      �� 5   
   -
   5         ��Name$ T_URL��5      $
��URL:��6#   $��20��6/   $
��Wrap=�6;   $��30��6O   	 �� TextAlignment$	 Center=�6Z   $��120,25,880,374q�6q   �� 5   
   -   5        $ TB_URL��5      $
��Left=�65   $��25��6P   $
 Wrap=�6\   $��Center=�6p   $	��200��6�   $��155,20,0,374q�6�   �� 5    
   $a��[*Po zadání nového URL, vyhledání, nebo textu v tabulce stiskněte Enter pro uložení.��6   $
��Left=�6n   $��
10,403,0,0q�6�   $	��Top=�6�   $	��620��6�   $��Center=�6�   5!      5"      