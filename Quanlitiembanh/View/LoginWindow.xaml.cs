using Quanlitiembanh.Model;
using Quanlitiembanh.View;
using System;
using System.Collections.Generic;
using System.Data.Linq;
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

namespace Quanlitiembanh
{
    /// <summary>
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string username = tendangnhap.Text; // Lấy giá trị chuỗi từ TextBox
            string password = matkhau.Password; // Lấy giá trị chuỗi từ PasswordBox

            // Kết nối đến cơ sở dữ liệu bằng LINQ
            using (QuanlitiembanhDataContext dbContext = new QuanlitiembanhDataContext())
            {
                // Thực hiện truy vấn kiểm tra thông tin đăng nhập
                var user = dbContext.users.FirstOrDefault(u => u.tendangnhap == username && u.matkhau == password);

                if (user != null)
                {
                   
                    // Người dùng đăng nhập thành công
                    // Thực hiện các hành động tiếp theo, ví dụ: Mở cửa sổ mới
                    MainWindow mainWindow = new MainWindow();
                    mainWindow.txtUsernameDisplay.Text = user.tenhienthi;
                    mainWindow.Show();
                    this.Hide();
                }
                else
                {
                    // Người dùng không hợp lệ, hiển thị thông báo lỗi hoặc xử lý sai thông tin đăng nhập
                    MessageBox.Show("Tên đăng nhập hoặc mật khẩu không đúng.", "Lỗi đăng nhập", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            RegisterWindow registerWindow = new RegisterWindow();
            registerWindow.Show();
            this.Hide();
        }

        
    }
}
