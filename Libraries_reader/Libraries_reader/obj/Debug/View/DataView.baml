   M S B A M L   `   `   `  ����K  GLibraries_reader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Libraries_reader.ViewLibraries_reader.View  5      $    Libraries_reader.View.DataView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:Libraries_reader.View     5        � 	Resources  5
       
  Delete  ID �� TextAlignment �� UpdateSourceTrigger 
 Author  Translation  PublicationDate��%"  &	        &	 �     &	���     &	 X    &	 �    &	 ]    �� 5   
   .R�5      �� $��Delete_button��6   -   5        $��X��5   ?   
�������
���   �
�������6r   5      �� 5   
   .R�5      �� $ Center=�6-   ��6   �� *ID+6-   5      �� 5   
   .R�5      �� -   5        $��Center=�5   h   ��6   �� *Name+$ PropertyChanged=�6h   5      �� 5   
   .R�5      �� -   5        $��Center=�5   j   ��6   �� *Author+$ PropertyChanged=�6j   5      �� 5   
   .R�5      �� -   5        $��Center=�5   o   ��6   �� *Translation+$ PropertyChanged=�6o   5      �� 5   
   .R�5      �� -   5        $��Center=�5   s   ��6   �� *PublicationDate+$ PropertyChanged=�6s   5      5      .��5   
   � .+�5    
   �� -   5         ��Name$ book_list_view��5       $
��Left=�6+   $	��Top=�5!      $
��AUTO��6+   $	��300��68    �� View 5"      �� 5#      .P�5$      �� $
��del.��6%    �� Width$ 30��63    �� CellTemplate# [  6>   �� 5%      $��ID��6%   $ 50��61   # [ 6<   �� 5&      $��Jméno��6%   $	 100��64   # [��6@   �� 5'      $��Autor��6%   $	 100��64   # [ 6@   �� 5(      $��Překlad��6%   $	 100��66   # [ 6B   �� 5)      $��Datum vydání��6%   $	 100��6;   # [ 6G   5*      ��5-      �� 5.       �� 
TargetType" ��6    �� Triggers 5/      P� 50      	 P� Property	 �@J�IsMouseOver
 P� Value
 . . �51      ��  �� Property �@��
IsSelected �� Value . 6;   52      .�54      ��  � ��$ Stretch=�6C   55      58      59      5:      