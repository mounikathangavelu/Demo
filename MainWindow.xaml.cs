using System;
using System.Collections.Generic;
using System.Linq;
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

namespace WPF_HospitalManagementSystem
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void textBoxName_TextChanged(object sender, TextChangedEventArgs e)
        {   }

        private void btn_Login_Click(object sender, RoutedEventArgs e)
        {
            if (txt_UserName.Text=="admin" && txt_Password.Text=="admin")
            {
                MessageBox.Show("Succesful Login ! \n Username : " + txt_UserName.Text + "\n Password : " + txt_Password.Text);
            }
            else
            {
                MessageBox.Show("Please Check Your login credentials ! \n Username : " + txt_UserName.Text + "\n Password : " + txt_Password.Text);
            }
           
        }

        private void btn_Reset_Click(object sender, RoutedEventArgs e)
        {
            txt_Password.Clear();
            txt_UserName.Clear();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (txt_UserName.Text == "admin" && txt_Password.Text == "admin")
            {
                MessageBox.Show("Succesful Login ! \n Username : " + txt_UserName.Text + "\n Password : " + txt_Password.Text);
            }
            else
            {
                MessageBox.Show("Please Check Your login credentials ! \n Username : " + txt_UserName.Text + "\n Password : " + txt_Password.Text);
            }

        }
    }
}
