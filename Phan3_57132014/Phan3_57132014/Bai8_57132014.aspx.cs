using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132014
{
    public partial class Bai8_57132014 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void KTS_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int so;
            try
            {
                so = int.Parse(txtChan.Text);

                if ((so % 2) == 0)
                    args.IsValid = true;
                else
                    args.IsValid = false;
            }
            catch
            {
                lbTT.Text = "Dữ liệu không phải kiểu số. KT lại!";
            }
        }

        protected void btnDK_Click(object sender, EventArgs e)
        {
            if (!IsValid)
                return;
            else
                lbTT.Text = "Họ tên KH: " + txtTen.Text + "<br>" + "Mật khẩu: " + txtMK.Text + "<br>";
        }
    }
}