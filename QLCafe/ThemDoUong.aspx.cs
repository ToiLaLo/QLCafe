using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TheSon
{
    public partial class DoUong : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CSDL"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string MaNuoc = txtMa.Text;
            string TenNuoc = txtTen.Text;
            string NgayThang = txtNgayThang.Text;
            string MoTa = txtMota.Text;
            string Gia = txtGia.Text;
            string GhiChu = txtGhiChu.Text;
            if (MaNuoc == string.Empty || TenNuoc == string.Empty || NgayThang == string.Empty || MoTa == string.Empty || Gia == string.Empty || GhiChu == string.Empty)
            {
                Response.Write("mời bạn nhập");
            }
            try
            {
                SqlConnection ketnoi = new SqlConnection(connectionString);
                string lenh = "INSERT INTO DOUONG VALUES(@MAN, @TENN, @NgayThang, @Mota,@Gia, @Ghichu)";
                ketnoi.Open();
                SqlCommand cmd = new SqlCommand(lenh, ketnoi);
                cmd.Parameters.AddWithValue("@MAN", txtMa.Text);
                cmd.Parameters.AddWithValue("@TENN", txtTen.Text);
                cmd.Parameters.AddWithValue("@NgayThang", txtNgayThang.Text);
                cmd.Parameters.AddWithValue("@Mota", txtMota.Text);
                cmd.Parameters.AddWithValue("@Gia", txtGia.Text);
                cmd.Parameters.AddWithValue("@Ghichu", txtGhiChu.Text);
                int SoBanGhi = cmd.ExecuteNonQuery();
                ketnoi.Close();
                Response.Write("Thêm thành công");
            }
            catch (Exception ex)
            {
                Response.Write("'" + ex.Message + "'");
            }

        }
    }
}