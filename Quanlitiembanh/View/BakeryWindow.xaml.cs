using Microsoft.Win32;
using Quanlitiembanh.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
    /// Interaction logic for BakeryWindow.xaml
    /// </summary>
    /// 

    public partial class BakeryWindow : Window
    {
        

        public BakeryWindow()
        {
            InitializeComponent();

        }

        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-13UCEGF\\SQLEXPRESS;Initial Catalog=Quanlitiembanhmi;Integrated Security=True");
        QuanlitiembanhDataContext dl = new QuanlitiembanhDataContext();

        public void load_data()
        {
            dataSanpham.ItemsSource = dl.laydanhsachsanpham();
        }
        // Hiển thị dữ liệu của database lên bảng 
        private void formBakery_Loaded(object sender, RoutedEventArgs e)
        {
            load_data();

            
        }

        // Thêm sản phẩm

        public int Ktrasanpham(string sp)
        {
            cn.Open();
            string sql = string.Format("SELECT COUNT(tensanpham) AS numberSanPham FROM sanpham WHERE tensanpham = @sp");
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.Parameters.AddWithValue("@sp", sp.Trim());
            int sl = (int)cmd.ExecuteScalar();
            cn.Close();
            return sl;
        }
        private void Them_sanpham(object sender, RoutedEventArgs e)
        {
            string tensp = txtTenbanhmi.Text;
            if (Ktrasanpham(tensp) >= 1)
            {
                MessageBox.Show("Bánh mì này đã có!", "Thông báo",
                                MessageBoxButton.OK, MessageBoxImage.Information);
                txtTenbanhmi.Clear();
                txtTenbanhmi.Focus();
            }
            else
            {
                MessageBoxResult rd = MessageBox.Show("Bạn chắc chắn muốn thêm thông tin bánh mì?",
                                                      "Thông báo", MessageBoxButton.YesNo,
                                                      MessageBoxImage.Question);
                if (rd == MessageBoxResult.Yes)
                {
                    dl.themsanpham(txtTenbanhmi.Text, float.Parse(txtGiatien.Text), txtMota.Text, txtAnh.Text,int.Parse( txtSoluong.Text), DateTime.Now, DateTime.Now);
                    load_data();
                }
            }
        }
        // thêm ảnh 
        private void btnChonAnh_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog oFile = new Microsoft.Win32.OpenFileDialog();
            if (oFile.ShowDialog() == true)
            {
                Uri fileUri = new Uri(oFile.FileName);
                image.Source = new BitmapImage(fileUri);
                oFile.Filter = "Pictures files (*.jpg, *.jpeg, *.jpe, *.jfif, *.png)|*jpg; *.jpeg; *.jpe; *.jfif; *png|All files(*.*)|*.*";
                txtAnh.Text = System.IO.Path.GetFileName(oFile.FileName);
            }
        }
        // Xóa
        private void Xoa_sanpham(object sender, RoutedEventArgs e)
        {
            MessageBoxResult rd = MessageBox.Show("Bạn chắc chắn muốn xóa thông tin?",
                                                   "Thông báo", MessageBoxButton.YesNo,
                                                   MessageBoxImage.Question);
            if (rd == MessageBoxResult.Yes)
            {
                dl.xoasanpham(Convert.ToInt32(txtId.Text));
                load_data();
            }
        }
        //Sửa
        private void Sua_sanpham(object sender, RoutedEventArgs e)
        {
            MessageBoxResult rd = MessageBox.Show("Bạn chắc chắn muốn cập nhật thông tin?",
                                                "Thông báo", MessageBoxButton.YesNo,
                                                MessageBoxImage.Question);
            if (rd == MessageBoxResult.Yes)
            {
                dl.suasanpham(Convert.ToInt32(txtId.Text),txtTenbanhmi.Text, float.Parse(txtGiatien.Text), txtMota.Text,  int.Parse(txtSoluong.Text),txtAnh.Text, DateTime.Now);
                load_data();
            }
        }

        // Tìm kiếm 
        private void timkiem_sanpham(object sender, RoutedEventArgs e)
        {
            dataSanpham.ItemsSource = dl.timsanpham(txtTimKiem.Text);
        }
    }
    }
