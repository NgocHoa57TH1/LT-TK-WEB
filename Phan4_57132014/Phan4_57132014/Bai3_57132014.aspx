<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai3_57132014.aspx.cs" Inherits="Phan4_57132014.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 419px;
        }
        .auto-style2 {
            width: 100%;
            height: 82px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DANH SÁCH ĐIỆN THOẠI HIỆN CÓ&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridTable" runat="server" Width="826px">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CẬP NHẬT THÔNG TIN ĐIỆN THOẠI&nbsp;</td>
                </tr>
                <tr>
                    <td>Mã điện thoại</td>
                    <td>
                        <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Tên điện thoại</td>
                    <td>
                        <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Ảnh điện thoại</td>
                    <td class="auto-style4">
                        <asp:FileUpload ID="txtUpload" runat="server" />
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Phụ kiện kèm theo</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPK" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td>Đơn giá</td>
                    <td>
                        <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Loại điện thoại</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="dropLoai" runat="server" Width="123px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="bntThem" runat="server" OnClick="bntThem_Click" Text="THÊM" />
&nbsp;&nbsp;
                        <asp:Button ID="bntSua" runat="server" OnClick="bntSua_Click" Text="SỬA" />
&nbsp;&nbsp;
                        <asp:Button ID="bntXoa" runat="server" OnClick="bntXoa_Click" Text="XÓA" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
