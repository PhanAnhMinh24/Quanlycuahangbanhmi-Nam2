   M S B A M L   `   `   `  ����I  EQuanlitiembanh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Quanlitiembanh.ViewQuanlitiembanh.View  5   	   M+clr-namespace:Quanlitiembanh.UserControlPAMQuanlitiembanh.UserControlPAM  5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U<clr-namespace:System.Windows.Media;assembly=PresentationCoreSystem.Windows.Media 5   	   "    Quanlitiembanh.View.BillView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Quanlitiembanh.View     5   	   :uc+clr-namespace:Quanlitiembanh.UserControlPAM     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
   	   Hmedia<clr-namespace:System.Windows.Media;assembly=PresentationCore  5   	   -   5        $��
billWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    
 MainVM � DataContext# [ 5   	    � Title$
 Bill��5   	   $	��900��6   $	��600��6#   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 6$   �� *LoadedWindowCommand+5      .��5      � 
 � RowDefinitions
 5   
   �� 5       $
��auto �6   6,   �� 5!      6   .+�5#   
   � $��0��6   .+�5$      0   *Quanlitiembanh.UserControlPAM.ControlBarUC  
 � Tag 6   �� *Title+ �� ElementName$ 
billWindow��6O   5%      � 5&   
   $��1��6   .+�5'      #  MaterialDesignThemes.Wpf.Card  $��1��6"   $	��600��6/   $	��900��6;   $��Center=�6H   $��Center=�6e   .��5(      �  � 	Resources 5)       �� 
TargetType �� Property �� Value��%^   '�       �� 5*      " �6    .�5+      ��  � ��$ 	10 0 10 0q�67   6K   5,      5.      
 5/      �� 50      6*   �� 51      6*   �� 52      6*   �� 53      6*   �� 54      6*   �� 55      $
��auto �6(   68   �� 56      6+   �� 57      $
��auto �6(   68   .+�59      � $��0��6   .+�5:      �� $��
Hóa đơn��6$   
�����w�$��24(�5<      $��
Montserrat)�5=      $��Center=�5>      $��Center=�5?      5@      � 5A      $��1��6   $��	10,10,0,0q�6)   .+�5B      �� -   5         ��Name$ txtTenKH��5B   "   $��Center=�5C      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên khách hàng��5D       % !MaterialDesignFloatingHintTextBox#��[ 5E      $��	10,0,10,0q�6T   5F      � 5G      $��2��6   $��	10,10,0,0q�6*   .+�5H      �� -   5        $ txtSDT��5H   "   $��Center=�5I      $&  Số điên thoại khách hàng��5J      #��[ 5K      $��	10,0,10,0q�6T   5L      � 5M      $��3��6   .+�5N      �� -   5        $ 
txtVoucher��5N   "   $��Center=�5O      $ Mã giảm giá��5P      #��[ 5Q      $��	10,0,10,0q�6T   5R      � 5S      $��4��6    � ColumnDefinitions 5T      �� 5U      61   �� 5V      61   .+�5X      � $��0��6   .+�5Y      �� -   5         ��Name$ 
cboSanPham��5Y   '      
IsFloating .  " MaterialDesignOutlinedComboBox#��[ 5[   !   5\      � 5]      $��1��6   .+�5^      �� -   5        $ 
txtSoLuong��5^   &   $	��Top=�5_      $ Số lượng��5`      #��[ 5a      $��
13,48,20,0q�6T   5b      5c      � 5d      $��5��6    5e      �� 5f      $
��auto �6/   6>   �� 5g      61   .+�5i      � $��0��6   .+�5j      �� -   5         ��Name$ 
btnTamTinh��5j   %   $��Tạm tính��5k       " MaterialDesignPaperLightButton#��[ 5m       � ToolTip$ Tính tiền��5n      $��
0,64,90,10q�6/   {�5l      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType$ WindowL�5n   C   5o      � 5p      $��1��6    5q      �� 5r   "   $
��auto �63   6B   �� 5s   "   65   .+�5u      � $��0��6#   .+�5v   "   �� $��Thành tiền:��5w   %   $��Century gothic)�5x   %   $��16(�5y   %   $��-81,67,83,-68q�63   5{      � 5|      $��1��6#   .+�5}   "   �� -   5        $ txtTongTien��5}   *   $	��Top=�5~   %   $ 0 VND��5   %    �� AcceptsReturn .  ! MaterialDesignOutlinedTextBox#��[ 5�   %    �� TextWrapping$
 Wrap=�5�   %   " �� VerticalScrollBarVisibility$
 Auto=�5�   %   $��-86,54,-14,0q�6H   {�5�   %   ��  �� Path$ 	IsChecked�$2 ,MaterialDesignOutlinedTextBoxEnabledComboBox��5�   H   5�      5�      5�      � 5�      $��6��6    5�      �� 5�      61   �� 5�      61   .+�5�      �� -	   5        $ btnTinhTien��5�   !   $��0��5�   !   $��Tính tiền��5�       + 'MaterialDesignFlatSecondaryDarkBgButton#��[ 5�      $; 5Resource name:MaterialDesignFlatSecondaryDarkBgButton��5�      $��
10,24,0,24q�6[   {�5�      �� *DataContext.ControlsEnabled+ �� *FindAncestor+$ WindowL�5�   o   �� 5�      -
   5        $ 
btnQuaylai��5�   !   $��1��5�   !   $��
Quay lại��5�      #��[ 5�      $< 6Resource name: MaterialDesignFlatSecondaryDarkBgButton��5�      $��
10,24,0,24q�6\   {�5�      �� *DataContext.ControlsEnabled+ �� *FindAncestor+$ WindowL�5�   p   5�      5�      5�      5�      5�      5�      