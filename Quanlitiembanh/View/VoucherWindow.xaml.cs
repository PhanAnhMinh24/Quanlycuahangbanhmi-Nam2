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
    /// Interaction logic for VoucherWindow.xaml
    /// </summary>
    public partial class VoucherWindow : Window
    {
        public VoucherWindow()
        {
            InitializeComponent();
        }
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-13UCEGF\\SQLEXPRESS;Initial Catalog=Quanlitiembanhmi;Integrated Security=True");
        QuanlitiembanhDataContext dl = new QuanlitiembanhDataContext();

        public void load_data()
        {
            datavoucher.ItemsSource = dl.laydulieuvoucher();
        }
        // Hiển thị dữ liệu của database lên bảng 
        private void form_Voucher_Loaded(object sender, RoutedEventArgs e)
        {
            load_data();


        }
        public int Ktravoucher(string vc)
        {
            cn.Open();
            string sql = string.Format("SELECT COUNT(tenvoucher) AS numberVoucher FROM voucher WHERE tenvoucher = @vc");
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.Parameters.AddWithValue("@vc", vc.Trim());
            int sl = (int)cmd.ExecuteScalar();
            cn.Close();
            return sl;
        }
        // thêm
        private void Them_voucher(object sender, RoutedEventArgs e)
        {
            string tenvc = txtTenvoucher.Text;
            if (Ktravoucher(tenvc) >= 1)
            {
                MessageBox.Show("Mã này đã có!", "Thông báo",
                                MessageBoxButton.OK, MessageBoxImage.Information);
                txtTenvoucher.Clear();
                txtTenvoucher.Focus();
            }
            else
            {
                MessageBoxResult rd = MessageBox.Show("Bạn chắc chắn muốn thêm thông tin bánh mì?",
                                                      "Thông báo", MessageBoxButton.YesNo,
                                                      MessageBoxImage.Question);
                if (rd == MessageBoxResult.Yes)
                {

                    dl.themvoucher(txtTenvoucher.Text, txtMavoucher.Text,float.Parse(txtHoadontt.Text), float.Parse(txtGiamgiatd.Text), Convert.ToDateTime(txtNgaybatdau.Text) , Convert.ToDateTime(txtNgayketthuc.Text), DateTime.Now, DateTime.Now);
                    load_data();
                }
            }
        }
        // xóa
        private void Xoa_voucher(object sender, RoutedEventArgs e)
        {
            MessageBoxResult rd = MessageBox.Show("Bạn chắc chắn muốn xóa voucher",
                                                   "Thông báo", MessageBoxButton.YesNo,
                                                   MessageBoxImage.Question);
            if (rd == MessageBoxResult.Yes)
            {
                dl.xoavoucher(Convert.ToInt32(txtId_voucher.Text));
                load_data();
            }
        }

        private void Sua_voucher(object sender, RoutedEventArgs e)
        {
            
                MessageBoxResult rd = MessageBox.Show("Bạn chắc chắn muốn cập nhật thông tin?",
                                                    "Thông báo", MessageBoxButton.YesNo,
                                                    MessageBoxImage.Question);
                if (rd == MessageBoxResult.Yes)
                {
                    dl.suavoucher(Convert.ToInt32(txtId_voucher.Text), txtTenvoucher.Text, txtMavoucher.Text, Convert.ToDateTime(txtNgaybatdau.Text), Convert.ToDateTime(txtNgayketthuc.Text), float.Parse(txtHoadontt.Text), float.Parse(txtGiamgiatd.Text),  DateTime.Now);
                    load_data();
                }
            
        }

        // Tìm kiếm 
        private void timkiem_voucher(object sender, RoutedEventArgs e)
        {
            datavoucher.ItemsSource = dl.timvoucher(txtTimKiem.Text);
        }
    }
}
