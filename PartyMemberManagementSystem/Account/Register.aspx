<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  
    <div  >
     <h1>
     用户注册
     </h1>
        <span class="style1">用户名称：</span><asp:TextBox ID="textname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvname" runat="server" 
            ControlToValidate="textname" Display="Dynamic" ErrorMessage="用户名称不能为空!" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <span class="style1">登录密码：</span><asp:TextBox ID="textpassword" runat="server" 
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvpassword" runat="server" 
            ControlToValidate="textpassword" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red">登录密码不能为空!</asp:RequiredFieldValidator>
        <br />
        <br />
        <span class="style1">确认密码：<asp:TextBox ID="textquerenmima" runat="server" 
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvquerenmima" runat="server" 
            ControlToValidate="textquerenmima" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" style="font-size: medium">确认密码不能为空!</asp:RequiredFieldValidator>
            &nbsp;<asp:CompareValidator ID="comquerenmima" runat="server" 
            ControlToCompare="textpassword" ControlToValidate="textquerenmima" 
            Display="Dynamic" ErrorMessage="确认密码与登录密码不相同!" 
            style="font-size: medium; color: #FF0000"></asp:CompareValidator>
        <br />
        <br />
        电子邮箱：<asp:TextBox ID="textemail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvemail" runat="server" 
            ControlToValidate="textemail" Display="Dynamic" 
            ErrorMessage="RequiredFieldValidator" ForeColor="Red" style="font-size: medium">电子邮箱不能为空!</asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="rgexvaemail" runat="server" 
            ControlToValidate="textemail" Display="Dynamic" ErrorMessage="电子邮箱格式不正确!" 
            style="font-size: medium; color: #FF0000" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           <br />
        <br />
      

        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
        RepeatDirection="Horizontal" AppendDataBoundItems="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged1"  >
        <asp:ListItem>管理员</asp:ListItem>
        <asp:ListItem>普通同学</asp:ListItem>
         </asp:RadioButtonList>

        <br />
        <asp:Button ID="btnok" runat="server" style="font-size: medium" Text="完成 " 
            onclick="btnok_Click" />

    </div>
    </form>
</body>
</html>
