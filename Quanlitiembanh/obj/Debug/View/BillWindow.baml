   M S B A M L   `   `   `  ����I  EQuanlitiembanh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Quanlitiembanh.ViewQuanlitiembanh.View  5   	   M+clr-namespace:Quanlitiembanh.UserControlPAMQuanlitiembanh.UserControlPAM  5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U<clr-namespace:System.Windows.Media;assembly=PresentationCoreSystem.Windows.Media 5   	   $    Quanlitiembanh.View.BillWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Quanlitiembanh.View     5   	   :uc+clr-namespace:Quanlitiembanh.UserControlPAM     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
   	   Hmedia<clr-namespace:System.Windows.Media;assembly=PresentationCore  5   	   -   5          �Name$  
billWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    
 MainVM � DataContext# [ 5   	    � Title$ 
Hóa đơn��5   	   $	��800��6   $	��900��6&   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      0   *Quanlitiembanh.UserControlPAM.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 window��6K   5      � 5!   
   $��1��6    5"      �� 5#      $
��auto �6    60   �� 5$      $
��auto �6    60   �� 5%      6"   .+�5)      �� -   5        
 ��Name$
 txtId��5*      ��5+      �� $	 
dataHoadon�� �� Path$ SelectedItem.idhoadon�#  MaterialDesignThemes.Wpf.Card  5.      $��1��6"   $��5q�6/   .��5/      �  � ColumnDefinitions 51      �� 52      6-   �� 53      6-   .+�55      � $��0��6   .+�56      �� -   5        $��Thêm��56   !   $	��100��61   $��	48,0,49,0q�6Z   ��6=   �� *
BillView+6�   57      � 58      $��1��6   .+�59      �� -   5         ��Name$ btnXoa��59   !   $��Xóa��6S   $	��100��6b   $��	48,0,49,0q�6n   ��61   �� *DeleteCommand+6�   5:      5;      5<      &   System.Windows.Controls.DataGrid  5>      -   5          Name$ 
dataHoadon��5>      $��3��5?      $��5q�5@         AutoGenerateColumns .  ��5A      �� *List+ �� SelectedItem 5B      �� *SelectedItem+ �� Mode$ OneWayToSource=�   Columns 5D      0  *System.Windows.Controls.DataGridTextColumn  5E      ,  &System.Windows.Controls.DataGridColumn   Header$ Mã hóa đơn��6*   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *
idhoadon+  5F      $ Tên khách hàng��6)    6A   �� *tenkhachhang+  5G      $ Tên sản phẩm��6)    6?   �� *
tensanpham+  5H      $ Số lượng��6)    6;   �� *	soluong+  5I      $ Giá tiền��6*    6<   �� *
tongtien+  5J      $ Ngày thêm��6)    6<   �� *
ngaythem+5M      5N      5O      5Q      