using System;
using System.Collections.Generic;
using System.Linq;
using System.Media;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Pesswordz
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            firstrungrid.Visibility = Visibility.Hidden;
            nextrungrid.Visibility = Visibility.Hidden;
            Passwordtextbox.Visibility = Visibility.Hidden;
            resetpasswordbutton.Visibility = Visibility.Hidden;
            resetpasswordborder.Visibility = Visibility.Hidden;

            if (Properties.Settings.Default.firstrun == 1)
            {
                firstrungrid.Visibility = Visibility.Visible;
                passwordsdonotmatchlabel.Visibility = Visibility.Hidden;
            }
            else
            {
                nextrungrid.Visibility = Visibility.Visible;
                passwordisincorrect.Visibility = Visibility.Hidden;
            }
        }

        private void MoveWindow(object sender, MouseButtonEventArgs e)
        {
            try
            {
                this.DragMove();
            }
            catch
            {
            }
        }

        private void passwordbox2_PasswordChanged(object sender, RoutedEventArgs e)
        {
            if(passwordbox2.Password.Length > 0)
            {
                if (passwordbox2.Password == passwordbox1.Password)
                {
                    Continuebutton.IsEnabled = true;
                    passwordsdonotmatchlabel.Visibility = Visibility.Hidden;
                }
                else
                {
                    passwordsdonotmatchlabel.Visibility = Visibility.Visible;
                    Continuebutton.IsEnabled = false;
                }
            }
            else
            {
                passwordsdonotmatchlabel.Visibility = Visibility.Hidden;
            }
        }

        private void Continuebutton_Click(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.password = passwordbox2.Password;
            Properties.Settings.Default.firstrun = 0;
            Properties.Settings.Default.Save();
            firstrungrid.Visibility = Visibility.Hidden;
            resetpasswordbutton.Visibility = Visibility.Visible;
            resetpasswordborder.Visibility = Visibility.Visible;
            Passwordtextbox.Visibility = Visibility.Visible;
        }

        private void passwordbox3_PasswordChanged(object sender, RoutedEventArgs e)
        {
            if(passwordbox3.Password.Length > 0)
            {
                Continuebutton1.IsEnabled = true;
                passwordisincorrect.Visibility = Visibility.Hidden;
            }
        }

        private void Continuebutton1_Click(object sender, RoutedEventArgs e)
        {
            if(passwordbox3.Password == Properties.Settings.Default.password)
            {
                nextrungrid.Visibility = Visibility.Hidden;
                Passwordtextbox.Visibility = Visibility.Visible;
                Passwordtextbox.Text = Properties.Settings.Default.passwords;
                resetpasswordbutton.Visibility = Visibility.Visible;
                resetpasswordborder.Visibility = Visibility.Visible;
            }
            else
            {
                SystemSounds.Beep.Play();
                passwordisincorrect.Visibility = Visibility.Visible;
            }
        }

        private void Image_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.Close();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            Properties.Settings.Default.passwords = Passwordtextbox.Text;
            Properties.Settings.Default.Save();
        }

        private void TextBox_TextInput(object sender, TextCompositionEventArgs e)
        {
            
        }

        private void TextBox_KeyUp(object sender, KeyEventArgs e)
        {

        }

        private void passwordbox3_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                if (passwordbox3.Password == Properties.Settings.Default.password)
                {
                    nextrungrid.Visibility = Visibility.Hidden;
                    Passwordtextbox.Visibility = Visibility.Visible;
                    Passwordtextbox.Text = Properties.Settings.Default.passwords;
                    resetpasswordbutton.Visibility = Visibility.Visible;
                    resetpasswordborder.Visibility = Visibility.Visible;
                }
                else
                {
                    SystemSounds.Beep.Play();
                    passwordisincorrect.Visibility = Visibility.Visible;
                }
            }
        }

        private void RadButton_Click(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.firstrun = 1;
            Properties.Settings.Default.passwords = "";
            Properties.Settings.Default.Save();
            this.Close();
        }
    }
}
