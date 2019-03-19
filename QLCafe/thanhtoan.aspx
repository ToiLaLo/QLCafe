<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thanhtoan.aspx.cs" Inherits="WebApplication1.thanhtoan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 549px;
        }
    </style>
    <script type="text/javascript">
        function InPhieu() {
            if (confirm("Tiến hành in phiếu."))
                return true;
            else
                return false;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtSearch" runat="server" TextMode="Search" ></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
                    <br />
                    <asp:Label ID="lblMessage" runat="server" Text="Thông báo"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                           <asp:TemplateField HeaderText="Ten Do Uong">
                            <ItemTemplate>
                                <asp:Label ID="Labname" runat="server" Text='<%#Bind("TenDoUong") %>'></asp:Label>
                            </ItemTemplate>
                               <ControlStyle Width="150px" />
                            
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Dvt">
                            <ItemTemplate>
                                <asp:Label ID="LabDvt" runat="server" Text='<%#Bind("Dvt") %>'></asp:Label>
                            </ItemTemplate>
                             <ControlStyle Width="50px" />
                           </asp:TemplateField>
                          <asp:TemplateField HeaderText="Gia">
                            <ItemTemplate>
                                <asp:Label ID="LabGia" runat="server" Text='<%#Bind("GiaBan") %>'></asp:Label>
                            </ItemTemplate>
                             <ControlStyle Width="100px" />
                           </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="SL" ItemStyle-Height="10px" 
                                ItemStyle-Width="10px" AccessibleHeaderText="1">
                           <ItemTemplate>
                                <asp:Textbox ID="txtSoLuong" runat="server" Text='1'></asp:Textbox>
                            </ItemTemplate>
                                <ControlStyle Width="50px" />

<ItemStyle Height="10px" Width="10px"></ItemStyle>
                           </asp:TemplateField>
                            
                        </Columns>
                    </asp:GridView>
                    
                    <br />
                    <asp:Button ID="ButCopy" runat="server" Text="Tinh" onclick="ButCopy_Click" />
                    
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td style="margin-left: 80px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label1" runat="server" Text="THÔNG TIN HÓA ĐƠN"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="In Phiếu" 
                        onclientclick="return InPhieu();"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Hủy" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" ondatabound="GridView2_DataBound" >
                        <Columns>
                             <asp:BoundField DataField="TenDoUong" HeaderText="Tên đồ uống" ItemStyle-Width="150px" />
                             <asp:BoundField DataField="Dvt" HeaderText="ĐVT" ItemStyle-Width="50px" />
                             <asp:BoundField DataField="GiaBan" HeaderText="Giá bán" ItemStyle-Width="100px" />
                             <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" ItemStyle-Width="50px"/>
                        </Columns>
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Tổng tiền"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox 
                        ID="txtTongTien" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chiết khấu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox 
                        ID="txtChietKhau" runat="server" AutoPostBack="True" 
                        ontextchanged="txtChietKhau_TextChanged"></asp:TextBox>
                    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Thuế suất"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="txtThueSuat" runat="server"></asp:TextBox>
                    <br />
                    <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Tổng cộng"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="txtTongCong" runat="server"></asp:TextBox>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Thanh toán"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtThanhToan" runat="server" AutoPostBack="True" 
                        ontextchanged="txtThanhToan_TextChanged"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server"></asp:Label>

                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Tiền trả lại"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtTienTraLai" runat="server" 
                        ></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
