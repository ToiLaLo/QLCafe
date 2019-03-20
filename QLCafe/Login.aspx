<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 190px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td align="center">
                    <asp:Label ID="Label1" runat="server" Text="Đăng Nhập Hệ Thống" 
                        Font-Size="Larger"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    &nbsp;</td>
                <td align="center">
                    <asp:Label ID="Label2" runat="server" Text="Tài Khoản"></asp:Label>
                    <asp:TextBox ID="txtTaiKhoan" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtTaiKhoan" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    &nbsp;</td>
                <td align="center">
                    <asp:Label ID="Label3" runat="server" Text="Mật khẩu"></asp:Label>
                    <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtMatKhau" ErrorMessage="không được bỏ trống"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td align="center">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Đăng Nhập" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Thoát" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
