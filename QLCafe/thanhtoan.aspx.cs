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
    public partial class thanhtoan : System.Web.UI.Page
    {
        static string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CSDL"].ConnectionString.ToString();
        float ck;
        int tt;
        //string connectionString = @"Server=DESKTOP-0VLE3HB;Database=QuanCafe;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }      
        }
        private void LoadData()
        {
            SqlConnection sqlConn = new SqlConnection(connectionString);
            try
            {
                sqlConn.Open();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            DataTable dataTable = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT TenDoUong,Dvt,GiaBan,SoLuong FROM DoUong", sqlConn);
            adapter.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();

        }

        private void LoadData(string tenDoUong)
        {
            string text = "SELECT TenDoUong,Dvt,GiaBan,SoLuong FROM DoUong WHERE TenDoUong LIKE N'%" + tenDoUong + "%'";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(text, conn);
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            da.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
            conn.Close();    
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtSearch.Text))
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Nhập [Tên đồ uống] cần tìm";
                
            }
            else
            {
                //lblMessage.Text = "Không có dữ liệu cần tìm";
                LoadData(txtSearch.Text.Trim());
                lblMessage.Text = "";
                
                if (GridView1.Rows.Count == 0)
                    lblMessage.Text = "Không có đồ uống cần tìm...";
              
            }
        }

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //    //index = int.Parse(e.CommandArgument.ToString());
        //    // this.TextBox1.Text = Gridview.Rows[index].Cells[1].Text;

        //    TextBox1.Text = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[1].Text);
        //    DataTable dt = new DataTable();
        //    dt.Columns.Add("Tên SP");
        //    dt.Columns.Add("Giá");
        //    GridView2.DataSource = dt;

        //    DataRow row;
        //    row = dt.NewRow();
        //    row["Tên SP"] = HttpUtility.HtmlDecode((string)GridView1.SelectedRow.Cells[1].Text);
        //    row["Giá"] = GridView1.SelectedRow.Cells[2].Text;
        //    dt.Rows.Add(row);
        //    GridView2.DataBind();
        //}

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadData();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void ButCopy_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("TenDoUong");
            dt.Columns.Add("Dvt");
            dt.Columns.Add("GiaBan");
            dt.Columns.Add("SoLuong");

            foreach (GridViewRow grow in GridView1.Rows)
            {
                var checkboxselect = grow.FindControl("CheckBox1") as CheckBox;
                CheckBox chk = (CheckBox)grow.FindControl("CheckBox1");
                if (checkboxselect.Checked)
                {

                    string TenDoUong = (grow.FindControl("Labname") as Label).Text;
                    string Dvt = (grow.FindControl("LabDvt") as Label).Text;
                    string Gia = (grow.FindControl("LabGia") as Label).Text;
                    string SoLuong = (grow.FindControl("txtSoLuong") as TextBox).Text;
                    
                    dt.Rows.Add(TenDoUong, Dvt, Gia, SoLuong);
                   // int SL = 1;

                    //foreach (GridViewRow grow2 in GridView2.Rows)
                    //{
                    //    string TenDoUong2 = (grow2.FindControl("Labname") as Label).Text;
                    //    string SoLuong = (grow2.FindControl("LabSoLuong") as Label).Text;

                    //    if (TenDoUong2 == TenDoUong)
                    //    {
                    //        SL = Int32.Parse(SoLuong);
                    //        SL++;
                            
                    //        break;
                    //    }
                                          }
                    //dt.Rows.Add(TenDoUong, Dvt, Gia, SL);
                    //string SoLuong = (grow.FindControl("LabSoLuong") as Label).Text;
                //    dt.Rows.Add(TenDoUong, Dvt,Gia);
                  //  Response.Write("aa:" + GridView1.DataKeys[grow.RowIndex].Value + ",vv:" + grow.Cells[2].Text + "<br/>");
                    
                    
                    
                    
                }
               
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {
            int tien = 0;
            int thuesuat = 0;
            int chietsuat=0;
            
            foreach (GridViewRow grvRow in GridView2.Rows)
            {
                tien += int.Parse(grvRow.Cells[2].Text.ToString())*int.Parse(grvRow.Cells[3].Text.ToString());
                
            }
            txtTongTien.Text = tien.ToString();
            txtTongCong.Text = tien.ToString();
            txtTongTien.ReadOnly = true;
            txtThueSuat.Text = thuesuat.ToString();
            txtThueSuat.ReadOnly = true;
            txtChietKhau.Text = chietsuat.ToString();
            txtTienTraLai.ReadOnly = true;
            txtTongCong.ReadOnly = true;
            //Test
            //Test 2

            
        }

        protected void txtChietKhau_TextChanged(object sender, EventArgs e)
        {

            int tien = int.Parse(txtTongTien.Text);
            float tongcong;
            if (float.Parse(txtChietKhau.Text) == 0)
            {
                
                txtTongCong.Text = tien.ToString();
            }
            else{
                ck= float.Parse(txtChietKhau.Text);
                tongcong = tien * (100 - float.Parse(txtChietKhau.Text)) / 100;
            txtTongCong.Text = tongcong.ToString();
            txtChietKhau.Text = ck.ToString("#.0");
            }
                
        }

        

        protected void txtThanhToan_TextChanged(object sender, EventArgs e)
        {
            int tongcong = int.Parse(txtTongCong.Text);
            int tienthoi;
            if (txtThanhToan.Text == "")
            {
                Label7.Text = "Mời nhập số tiền đưa";
            }
            else
            {
                tt = int.Parse(txtThanhToan.Text);
                tienthoi = tt - tongcong;
                txtTienTraLai.Text = tienthoi.ToString();
                txtThanhToan.Text = tt.ToString();
            }

        }
        }

       

       

       

        
                
    }
