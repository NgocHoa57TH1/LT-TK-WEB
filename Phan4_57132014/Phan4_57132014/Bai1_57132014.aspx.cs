using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan4_57132014
{
    public partial class Bai1_57132014 : System.Web.UI.Page
    {
        String conn = @"Data Source=NGOCHOA\SQLEXPRESS;Initial Catalog=Bai1_57132014;user = sa;pwd = 123";
        DataTable DSDienThoai()
        {
            SqlDataAdapter adap = new SqlDataAdapter("DienThoai_DS", conn);
            DataTable ds = new DataTable();
            adap.Fill(ds);
            return ds;
        }
        void XoaDT(String MaDT)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("DienThoai_Xoa", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaDT", SqlDbType.Char).Value = MaDT;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        void ThemDT(String MaDT, String TenDT, int DonGia, String PhuKien, String Loai)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("DienThoai_Them", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaDT", SqlDbType.Char).Value = MaDT;
            cmd.Parameters.Add("@TenDT", SqlDbType.Char).Value = TenDT;
            cmd.Parameters.Add("@DonGia", SqlDbType.Int).Value = DonGia;
            cmd.Parameters.Add("@PhuKien", SqlDbType.Char).Value = PhuKien;
            cmd.Parameters.Add("@Loai", SqlDbType.Char).Value = Loai;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        void SuaDT(String MaDT, String TenDT, int DonGia, String PhuKien, String Loai)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("DienThoai_Sua", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MaDT", SqlDbType.Char).Value = MaDT;
            cmd.Parameters.Add("@TenDT", SqlDbType.Char).Value = TenDT;
            cmd.Parameters.Add("@DonGia", SqlDbType.Int).Value = DonGia;
            cmd.Parameters.Add("@PhuKien", SqlDbType.Char).Value = PhuKien;
            cmd.Parameters.Add("@Loai", SqlDbType.Char).Value = Loai;
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewTab.DataSource = DSDienThoai();
            GridViewTab.DataBind();
        }

        protected void bntXoa_Click(object sender, EventArgs e)
        {
            XoaDT(txtMa.Text);
            GridViewTab.DataSource = DSDienThoai();
            GridViewTab.DataBind();
        }

        protected void bntThem_Click(object sender, EventArgs e)
        {

            try
            {
                ThemDT(txtMa.Text, txtTen.Text, int.Parse(txtGia.Text), txtPk.Text, txtLoai.Text);
                GridViewTab.DataSource = DSDienThoai();
                GridViewTab.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Nhập vào thành công');", true);
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Nhập vào lỗi!');", true);
            }
        }

        protected void bntSua_Click(object sender, EventArgs e)
        {

            try
            {
                SuaDT(txtMa.Text, txtTen.Text, int.Parse(txtGia.Text), txtPk.Text, txtLoai.Text);
                GridViewTab.DataSource = DSDienThoai();
                GridViewTab.DataBind();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa thành công');", true);
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sửa bị lỗi!');", true);
            }
        }
    }
}