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
        this.RadioButtonList1.SelectedIndex = 0;
        string val = this.RadioButtonList1.SelectedValue;
        //val就是当前选中项的值
       
    }
  
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (UserName.Text == "")
        {
            Response.Write(@"<script>alert('用户名不能为空！');</script>");
        }
        if (Password.Text == "")
        {
            Response.Write(@"<script>alert('密码不能为空！');</script>");
        }
  /*      string username = UserName.Text;
        string password = Password.Text;
        string sql = "select * from T_user where username=@username and password=@password";
        SqlParameter[] parameters = { new SqlParameter("@username", username), new SqlParameter("@password", password) };
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            using (SqlCommand cmd = conn.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddRange(parameters);
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);
                DataTable table = ds.Tables[0];
                if (table != null)
                    Response.Write(@"<script>alert('登录成功！');</script>");
                else
                    Response.Write(@"<script>alert('登录失败！');</script>");

            }
        }*/
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        var response = base.Response;
        response.Redirect("./Account/Register.aspx", false); 
    }
}