using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.RadioButtonList1.SelectedIndex = 0;//默认值为第一个选择
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        string val = this.RadioButtonList1.SelectedValue;
        //val就是当前选中项的值

       /* string username = tbusername.Text;
        string password = tbpsw.Text;
        string sql = "Insert into T_user(username, password) values(@username,@password)";
        SqlParameter[] parameters = { new SqlParameter("@username", username), new SqlParameter("@password", password) };
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            using (SqlCommand cmd = conn.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddRange(parameters);
                cmd.ExecuteNonQuery();
            }
        }*/

        Response.Write(@"<script>alert('注册成功！');</script>");
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}