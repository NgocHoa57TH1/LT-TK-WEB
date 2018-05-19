using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132014
{
    public partial class Bai5_57132014 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLamlai_Click(object sender, EventArgs e)
        {
            txtKQ.Text = " ";
            txtN.Text = " ";
        }

        int SNT(int soA)
        {
            if (soA < 2)
                return 0;
             
                for (int j = 2; j <= Math.Sqrt((float)soA); j++)
            
                if (soA % j == 0)
                {
                    return 0;
                }
            
                return 1;
        }


        protected void btnShow_Click(object sender, EventArgs e)
        {
            int n = int.Parse(txtN.Text);
            int i = 1;
            while (i <= n)
            {
                if ((SNT(i)) == 1)
                {
                    txtKQ.Text += "-->" + i;  
                }
                i++;
            } 
        }
    }
}