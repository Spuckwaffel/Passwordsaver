   M S B A M L   `   `   `  ����D  @Pesswordz, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Pesswordz	Pesswordz  5   	       Pesswordz.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Pesswordz     5   	   a ]Telerik.Windows.Data, Version=2020.1.115.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7w sTelerik.Windows.Controls.DataVisualization, Version=2020.1.115.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2020.1.115.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Ctelerik1http://schemas.telerik.com/2008/xaml/presentation    5   	   -   5          � Title$  
MainWindow��5	   	   $��682.5��6   $
��1235��6+    � 
ResizeMode$ CanResizeWithGrip=�68    � WindowStyle$
 None=�6W   $��1q�6j   ���	#FF1B1B1B � AllowsTransparency . ��6~   Z�  J� Effect 5
      3  -System.Windows.Media.Effects.DropShadowEffect  5   
   ��5      �� 5   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5      �  � Color$ 	#FFFF5100��6    � Offset$ 1Q�6-   � 5      $	 Red��6   5      .��5      � $��	0,0,-2,-2q�6   .+�5   
   �� -   5        $��25��5      $	��Top=�6   $��Right=�64   $��25��6P   $��0,5,12,0q�6[   $��Untitled-1.png��6m   6�   � 5   
   -   5        	 �Name$	 firstrungrid��5      $��395,151,395,150q�6%   $y�Hidden=�6>   .+�5      �� 
���  ��$��1q�6'   �� 5      $��Enter a password:��6   $��17,0,294,207q�60   $��16(�6F   
�������$��64��6g   $��Bottom=�6s   �� 5      $��Re-enter your password:��6   $��	17,0,0,88q�66   $��16(�6I   $
��Left=�6W   
�������$��64��6�   $��Bottom=�6�   �� 5      $��Please create a Password��6   $��	20,-1,0,0q�67   $��36(�6J   $
��Left=�6X   
�������$��64��6�   $	��Top=�6�   G� 5      -   5        
 G�Name$
 passwordbox1��5      $��24,0,29,215q�60   $��18(�6E   
���   �$��30��6f   
���  ��$��Bottom=�6�   G� 5      -   5        $
 passwordbox2��5      $��
24,0,29,98q�60   $��18(�6D   
���   �$��30��6e   
���  ��$��Bottom=�6�   (  "Telerik.Windows.Controls.RadButton  5      -   5          Name$ Continuebutton��5       $��Continue��68   $��	0,0,29,45q�6K   +  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ Fluent 6^   
���  ��
�������{�.  $��Right=�6�   $��74��6  $��28��6  $��Bottom=�6  ��6�   Z� 6  �� 5      -   5         ��Name$ passwordsdonotmatchlabel��5      $��Passwords do not match��66   $��	17,0,0,45q�6W   $��16(�6j   $
��Left=�6x   
���  ��$	��200��6�   $��Italic$�6�   $��31��6�   $��Bottom=�6�   ��6�   Z� 6�   �� 5      
���  ��$��2q�6'   $��	0,0,29,45q�6;   $��Right=�6N   $��74��6j   $��28��6u   $��Bottom=�6�   5!      � 5"   
   -   5        $	 nextrungrid��5"      $��395,240,395,239q�6$   ���	#FF1B1B1B$y�Hidden=�6T   .+�5#      �� 
���  ��$��1q�6'   �� 5$      $��Enter your password:��6   $��18,0,269,33q�63   $��16(�6H   
�������$��64��6i   $��Bottom=�6u   �� 5%      $ ��Please enter your Password��6   $��25,-1,26,140q�69   $��32(�6O   
�������6]   G� 5&      -	   5        $
 passwordbox3��5&      $��
24,0,29,38q�60   $��18(�6D   
���   �
���  ��$��30��6w   $��Bottom=�6�   6�     5'      -
   5        $ Continuebutton1��5'       $��Continue��69   $��0,0,29,5q�6L   $ Fluent 6^   
���  ��
�������{�.  $��28��6�   $��Bottom=�6�   $��Right=�6  $��74��60  ��6�   Z� 60  �� 5(      
���  ��$��2q�6'   $��0,0,29,5q�6;   $��28��6M   $��Bottom=�6Y   $��Right=�6t   $��74��6�   �� 5)      -   5        $ passwordisincorrect��5)      $��Password is incorrect��61   $��24,0,0,4q�6Q   $��16(�6c   $
��Left=�6q   
���  ��$	��200��6�   $��Italic$�6�   $��31��6�   $��Bottom=�6�   ��6�   Z� 6�   5*      �� 5+   
   $��	Passwords��6   $
��Left=�6$   $	��180��6?   
�������$��36(�6^   $��55��6l   $	��Top=�6x   �� 5,   
   -   5         ��Name$ Passwordtextbox��5,      $��15,70,15,15q�6+    �� TextWrapping$
 Wrap=�6@   $�� ��6T   $��5��6\   $��22(�6n    �� AcceptsReturn . " �� VerticalScrollBarVisibility$
 Auto=�6�     5-   
   -   5        $ resetpasswordbutton��5-      $��Reset Password + Data��69   $
��Left=�6Y   $��
185,21,0,0q�6t   $	��Top=�6�   $ Fluent 6�   $	��167��6�   $��34��6�   
�������
���  ��6  �� 5.   
   -   5         ��Name$ resetpasswordborder��5.      
���  ��$��2q�6@   $��
185,20,0,0q�6T   $��34��6h   $	��Top=�6t   $
��Left=�6�   $	��167��6�   5/      50      