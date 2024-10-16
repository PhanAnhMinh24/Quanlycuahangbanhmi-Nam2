using Quanlitiembanh.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
using System.Windows.Shapes;

namespace Quanlitiembanh.View
{
    /// <summary>
    /// Interaction logic for RegisterWindow.xaml
    /// </summary>
    public partial class RegisterWindow : Window
    {
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-13UCEGF\\SQLEXPRESS;Initial Catalog=Quanlitiembanhmi;Integrated Security=True");
        QuanlitiembanhDataContext dl = new QuanlitiembanhDataContext();

        public RegisterWindow()
        {
            InitializeComponent();
        }

        private void btnDangKy_Click(object sender, RoutedEventArgs e)
        {
            if(txtMatKhau.Password == txtNhapLaiMatKhau.Password)
            {
                dl.dangkytaikhoan(txtTaiKhoan.Text, txtNhapLaiMatKhau.Password, txtTenHienThi.Text, DateTime.Now, DateTime.Now);
                MessageBox.Show("Đăng ký thành công", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Mật khẩu không trùng nhau", "Lỗi đăng ký", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            LoginWindow loginWindow = new LoginWindow();
            loginWindow.Show();
            this.Close();
        }
    }
}
