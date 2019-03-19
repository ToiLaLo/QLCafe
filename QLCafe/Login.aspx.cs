using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        string connectionString = @"Server=DESKTOP-0VLE3HB;Database=QuanCafe;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string TenDangNhap = txtTaiKhoan.Text;
            string MatKhau = txtMatKhau.Text;
            if (TenDangNhap == string.Empty || MatKhau == string.Empty)
            {
                Response.Write("Điền thông tin đăng nhập");
                return;

            }
            SqlConnection ketnoi = new SqlConnection(connectionString);
            string lenh = "select * from NguoiDung where Username='" + txtTaiKhoan.Text + "' and PassWord='" + txtMatKhau.Text + "'";
            ketnoi.Open();

            SqlCommand cmd = new SqlCommand(lenh, ketnoi);
            SqlDataReader dr = cmd.ExecuteReader();
            bool kt = dr.Read();
            if (kt)
            {
                Response.Redirect("thanhtoan.aspx");

            }
            else
            {
                Response.Write("Tài khoản hoặc mật khẩu không đúng");
            }
        }

        
    }
}