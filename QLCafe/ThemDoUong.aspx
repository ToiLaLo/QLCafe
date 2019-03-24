<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoUong.aspx.cs" Inherits="TheSon.DoUong" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="THÊM NƯỚC UỐNG"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Mã nước uống"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Tên nước uống"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Ngày,tháng,năm"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNgayThang" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Mô tả"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMota" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Giá"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Ghi chú"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGhiChu" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Thêm" onclick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
