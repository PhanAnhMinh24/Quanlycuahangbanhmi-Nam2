   M S B A M L   `   `   `  ����I  EQuanlitiembanh, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:Quanlitiembanh.UserControlPAMQuanlitiembanh.UserControlPAM  5      0    *Quanlitiembanh.UserControlPAM.ControlBarUC   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      =local+clr-namespace:Quanlitiembanh.UserControlPAM     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
      -   5        $��ucControlBar��5	      .  (System.Windows.Interactivity.Interaction    Triggers  5   
   /  )System.Windows.Interactivity.EventTrigger  5         	EventName$ MouseLeftButtonDown��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6(   �� *MouseMoveWindowCommand+   CommandParameter 6S   ��  �� ElementName$ ucControlBar��5      .��5   
   � .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone     Mode$ PrimaryDark=�6$   .��5      ]� .+�5      �� $��Right=�6   
������  �� Orientation$ 
Horizontal=�6M    � 	Resources 5      	 �� 
TargetType
 �� Property �� Value��%�   '��       �� 5      "	 ��6    .�5      �� 
 � ��$ 2 4 2 4 q�67   6J   �� 5      
 � ��$ 35��66   6C   5      5      .+�5      �� -   5         ��Name$ an��5       � ToolTip$
 Ẩn��5       c� OverflowMode$ AsNeeded=�5      
������ ��5      �� *MinimizeWindowCommand+��5       �� $ ucControlBar��.��5!      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�62   5"      �� 5#      -   5        $ tonho��5$      $ Phóng to thu nhỏ��5#      $ AsNeeded=�5%      
������ ��5'      �� *MaximizeWindowCommand+��5(      �� $ ucControlBar��.��5)        $ 
DockWindow=�62   5*      �� 5+      -   5        $ closeBtn��5,      $ Đóng��5+      $ AsNeeded=�5-      
������ ��5/      �� *CloseWindowCommand+��50      �� $ ucControlBar��.��51        $ WindowClose=�62   52      53      �� 55      $
��Left=�6   $ 
Horizontal=�63   .+�57      �� $��16,0,0,0q�58      $��Center=�59      ��5:      �� *Tag+$ ucControlBar��5;      5<      5=      5>      5?      