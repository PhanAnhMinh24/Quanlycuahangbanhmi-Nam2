   M S B A M L   `   `   `  ����I  EQuanlitiembanh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Quanlitiembanh.ViewQuanlitiembanh.View  5   	   M+clr-namespace:Quanlitiembanh.UserControlPAMQuanlitiembanh.UserControlPAM  5   	   (    "Quanlitiembanh.View.RegisterWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Quanlitiembanh.View     5   	   :uc+clr-namespace:Quanlitiembanh.UserControlPAM     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   -   5        $��registerWindown��5   	      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Đăng kí tài khoản��5   	   $	��600��6#   $	��450��60   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      0   *Quanlitiembanh.UserControlPAM.ControlBarUC  
 � Tag 6   �� *Title+ �� ElementName$ registerWindown��6T   5      #  MaterialDesignThemes.Wpf.Card  5   
   $��1��6   $	��300��6+   $	��500��67   $��Center=�6D   $��Center=�6a   .��5       � 	 � 	Resources	 5!      
 �� 
TargetType �� Property �� Value��%^   '�       �� 5"      "
 �6   .�5#      ��  � ��$ 	10 0 10 0q�63   6G   5$      5&       5'      �� 5(      6&   �� 5)      6&   �� 5*      6&   �� 5+      6&   �� 5,      6&   �� 5-      6&   .+�5/      � $��0��6   .+�50      �� $��Đăng kí tài khoản��6    
�����w�$��24(�52      $��
Montserrat)�53      $��Center=�54      $��Center=�55      56      � 57      $��1��6   $��	10,10,0,0q�6%   .+�58      �� -   5         ��Name$ txtTenHienThi��59   4   $��Center=�6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên hiển thị��5:       % !MaterialDesignFloatingHintTextBox#��[ 5;      $��	10,0,10,0q�6T   5<      � 5=      $��2��6   $��	10,10,0,0q�6%   .+�5>      �� -   5        $ txtTaiKhoan��5?   4   $��Center=�6   $ Tài khoản��5@      #��[ 5A      $��	10,0,10,0q�6T   5B      � 5C      $��3��6   .+�5D      G� -   5         G�Name$ 
txtMatKhau��5E         
Foreground
 ��+��$ Mật khẩu��5G      .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 ��+�� ) %MaterialDesignFloatingHintPasswordBox#��[ 5I       G� Password$  ��6\   $��	5,20,0,22q�6h   5J      � 5K      $��4��6   .+�5L      G� -   5        $ txtNhapLaiMatKhau��5M      
 ��+��$   Nhập lại mật khẩu��5O      
 ��+��#��[ 5Q      $  ��6\   $��	5,20,0,22q�6h   5R      � 5S      $��5��6    � ColumnDefinitions 5T      �� 5U      6-   �� 5V      6-   .+�5X      �� -   5         ��Name$ 	btnDangKy��5Y   -   $��0��5X      $��
Đăng ký��5Y       + 'MaterialDesignFlatSecondaryDarkBgButton#��[ 5[       � ToolTip$; 5Resource name:MaterialDesignFlatSecondaryDarkBgButton��5\      $��
10,24,0,24q�6[   {�5Z      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType$ WindowL�5\   o   �� 5]      -   5        $ quaylai��5^   .   $��1��5]      $��
Quay lại��5^      #��[ 5`      $< 6Resource name: MaterialDesignFlatSecondaryDarkBgButton��5a      $��
10,24,0,24q�6\   {�5_      �� *DataContext.ControlsEnabled+ �� *FindAncestor+$ WindowL�5a   p   5b      5c      5d      5e      5f      