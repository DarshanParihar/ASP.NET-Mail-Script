using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Dal d = new Dal();
        int id =Convert.ToInt32( txtid.Text);
        string name = txtname.Text;
        string mobile = txtmobile.Text;
        string salary = txtsalary.Text;

        try
        {
            d.Insert(id, name, salary, mobile);
            Response.Write("data inserted");
        }
        finally
        {
            d = null;
        }
    }
}