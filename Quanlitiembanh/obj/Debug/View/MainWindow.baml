   M S B A M L   `   `   `  ����I  EQuanlitiembanh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:QuanlitiembanhQuanlitiembanh  5   	   M+clr-namespace:Quanlitiembanh.UserControlPAMQuanlitiembanh.UserControlPAM  5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U<clr-namespace:System.Windows.Media;assembly=PresentationCoreSystem.Windows.Media 5   	       Quanlitiembanh.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Quanlitiembanh     5   	   :uc+clr-namespace:Quanlitiembanh.UserControlPAM     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
   	   Hmedia<clr-namespace:System.Windows.Media;assembly=PresentationCore  5   	   -   5        $��
mainWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    
 MainVM � DataContext# [ 5   	    � Title$! Tiệm bánh mì nhỏ xíu��5   	   $	��500��6&   $	��600��63   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 6$   �� *LoadedWindowCommand+5      ��5      �� 5   
   
 �� ImageSource$
 /Img/tiembanhmi.jpg��6    j� Stretch$
 Fill=�6=    �� Opacity$
 0.85Q�6L   6]   .��5      �  � RowDefinitions 5    
   �� 5!      $
��auto �6   6,   �� 5"      $
��auto �6   6,   �� 5#      6   .+�5%   
   � $��0��6   .+�5&      0   *Quanlitiembanh.UserControlPAM.ControlBarUC  
 � Tag 6   �� *Title+ �� ElementName$ 
mainWindow��6O   5'      � 5(   
   $��1��6    � ColumnDefinitions 5)      �� 5*      6%   �� 5+      6%   .+�5-      � $��0��6   .+�5.      �� $��
Xin chào:��6   $��17(�5/      $
��Bold"�50      
�������$	��Top=�52      $��Right=�53      $��
0,2,-176,0q�64   54      � 55      $��1��6   .+�56      �� -   5         ��Name$ txtUsernameDisplay��5;      $��17(�57      $
��Bold"�58      
�������$��Center=�5:      $��Right=�5<      5=      5?      � 5@   
   $��2��6    5A      �� 5B      6"   �� 5C      6"    5F      �� 5G      6%   �� 5H      6%   .+�5K      � $��0��6   $��0��6    .+�5L      ��  � ToolTip$ 
Hóa đơn��6   $	��100��6+   $	��200��68   ��6D   �� *
BillWindow+.��5M      �  5N      �� 5O      61   �� 5P      61   .+�5S      � $��0��6   .+�5T      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ReceiptTextCheckOutline=�66   $��33��6U   $��	-26,0,0,0q�6a   $��42��6t   $��Center=�6   5U      � 5V      $��1��6   .+�5W      �� $��5,11,-26,-11q�6(   
Hóa đơn6G   5X      5Y      5Z      5[      � 5\      $��0��6   $��1��6    .+�5]      �� $ Voucher��6   $	��100��6+   $	��200��68   ��6D   �� *VoucherWindow+.��5^      �  5_      �� 5`      61   �� 5a      61   .+�5d      � $��0��6   .+�5e        $ TicketPercent=�66   $��33��6K   $��	-26,0,0,0q�6W   $��42��6j   $��Center=�6u   5f      � 5g      $��1��6   .+�5h      �� $��5,11,-26,-11q�6(   	Voucher6G   5i      5j      5k      5l      � 5m      $��1��6   $��0��6    .+�5n      �� $ 	Bánh mì��6   $	��100��6+   $	��200��68   ��6E   �� *BakeryWindow+.��5o      �  5p      �� 5q      61   �� 5r      61   .+�5u      � $��0��6   .+�5v        $ Baguette=�66   $��33��6F   $��	-26,0,0,0q�6R   $��42��6e   $��Center=�6p   5w      � 5x      $��1��6   .+�5y      �� $��5,11,-26,-11q�6(   	Bánh mì6G   5z      5{      5|      5}      � 5~      $��1��6   $��1��6    .+�5      �� -   5        $ Đăng xuất��5      $	��100��6-   $	��200��6:   .��5�      �  5�      �� 5�      61   �� 5�      61   .+�5�      � $��0��6   .+�5�        $ Logout=�66   $��33��6D   $��	-26,0,0,0q�6P   $��42��6c   $��Center=�6n   5�      � 5�      $��1��6   .+�5�      �� $��5,11,-26,-11q�6(   Đăng xuất6I   5�      5�      5�      5�      5�      5�      5�      