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
    /// Interaction logic for BillView.xaml
    /// </summary>
    
    public partial class BillView : Window
    {
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-13UCEGF\\SQLEXPRESS;Initial Catalog=Quanlitiembanhmi;Integrated Security=True");
        QuanlitiembanhDataContext dl = new QuanlitiembanhDataContext();

        public BillView()
        {
            InitializeComponent();
        }

        public void cboSanPham_Load()
        {
            cboSanPham.ItemsSource = dl.laydanhsachsanpham();
            cboSanPham.SelectedValuePath = "id";
            cboSanPham.DisplayMemberPath = "tensanpham";
        }

        private void form_Bill_Loaded(object sender, RoutedEventArgs e)
        {
            cboSanPham_Load();
        }

        public int KtraVoucher(string voucher)
        {
            cn.Open();
            string sql = string.Format("SELECT COUNT(mavoucher) AS numberVoucher FROM voucher WHERE mavoucher = @voucher");
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.Parameters.AddWithValue("@voucher", voucher.Trim());
            int sl = (int)cmd.ExecuteScalar();
            cn.Close();
            return sl;
        }

        private void btnTamTinh_Click(object sender, RoutedEventArgs e)
        {
            txtTongTien.Text = tongtien().ToString() + " VND";
        }

        private float tongtien()
        {
            float tongtien = 0;
            var sanpham = dl.chitietsanpham(Convert.ToInt32(cboSanPham.SelectedValue));
            float giatien = 0;
            foreach (var chitiet in sanpham)
            {
                giatien = (float)chitiet.giatien;
            }
            float tamtinh = Convert.ToInt32(txtSoLuong.Text) * giatien;

            float giamgia = 0;
            if (txtVoucher.Text.Equals("") || txtVoucher.Text == null)
            {
                tongtien = tamtinh;
            }
            else
            {
                if (KtraVoucher(txtVoucher.Text) >= 1)
                {
                    var voucher = dl.kiemtravoucher(txtVoucher.Text);
                    float hoadontoithieu = 0;
                    foreach (var chitietvoucher in voucher)
                    {
                        giamgia = (float)chitietvoucher.giamgiatoida;
                        hoadontoithieu = (float)chitietvoucher.hoadontoithieu;
                    }
                    if (tamtinh >= hoadontoithieu)
                    {
                        tongtien = tamtinh - giamgia;
                    }
                    else
                    {
                        tongtien = tamtinh;
                    }
                }
                else
                {
                    tongtien = tamtinh;
                }
            }
            return tongtien;
        }

        private void btnTinhTien_Click(object sender, RoutedEventArgs e)
        {
            int magiamgia = 0;
            if (KtraVoucher(txtVoucher.Text) >= 1)
            {
                var voucher = dl.kiemtravoucher(txtVoucher.Text);
                foreach (var chitietvoucher in voucher)
                {
                    magiamgia = (int)chitietvoucher.id;
                }
            }
            var sanpham = dl.chitietsanpham(Convert.ToInt32(cboSanPham.SelectedValue));
            int masp = 0;
            foreach (var chitiet in sanpham)
            {
                masp = (int)chitiet.id;
            }
            if (magiamgia == 0 && masp != 0)
            {
                dl.taohoadon(txtTenKH.Text, txtSDT.Text, null, masp, Convert.ToInt32(txtSoLuong.Text), DateTime.Now, DateTime.Now, tongtien());
            }
            else
            {
                dl.taohoadon(txtTenKH.Text, txtSDT.Text, magiamgia, masp, Convert.ToInt32(txtSoLuong.Text), DateTime.Now, DateTime.Now, tongtien());
            }

            BillWindow billWindow = new BillWindow();
            billWindow.Show();
            this.Close();
        }

        private void btnQuaylai_Click(object sender, RoutedEventArgs e)
        {
            BillWindow billWindow = new BillWindow();
            billWindow.Show();
            this.Close();
        }
    }
}
