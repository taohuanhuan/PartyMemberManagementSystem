<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
       <style type="text/css">
        .style1
        {
        magin:0 auto;
        
        }
        .style2
        {
        margin:0px;
        padding:0px;    
        }
        </style>
</head>
<body class= "style2">
    <form id="form1" runat="server">
    <div class="style1">
    <h1> 用户登录</h1>
   <p>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>                      
   </p>

    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密    码:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                
     </p>

<p>
     <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
        RepeatDirection="Horizontal" AppendDataBoundItems="True" 
        >
        <asp:ListItem>管理员</asp:ListItem>
        <asp:ListItem>普通同学</asp:ListItem>
         </asp:RadioButtonList>
</p>

 <p>
                        
      <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="登录" 
            ValidationGroup="LoginUserValidationGroup" onclick="LoginButton_Click"/>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button1" runat="server" CommandName="Register" Text="注册" 
            ValidationGroup="LoginUserValidationGroup" onclick="Button1_Click1"/>

</p>

    </div>
    </form>
</body>
</html>
