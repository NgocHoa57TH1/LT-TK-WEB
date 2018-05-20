<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai4_57132014.aspx.cs" Inherits="Phan4_57132014.Bai4_57132014" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 458px;
        }
        .auto-style2 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; THÔNG TIN TIN TỨC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td>Mã tin tức</td>
                    <td>
                        <asp:TextBox ID="txtMaTin" runat="server"></asp:TextBox>
                    </td>
                    <td>Tiêu đề</td>
                    <td>
                        <asp:TextBox ID="txtTieuDe" runat="server" Height="36px" Width="137px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Ngày đăng</td>
                    <td>
                        <asp:TextBox ID="txtNgayDang" runat="server"></asp:TextBox>
                    </td>
                    <td>Ảnh minh họa</td>
                    <td>
                        <asp:FileUpload ID="AnhUp" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Loại tin tức</td>
                    <td>
                        <asp:DropDownList ID="DropTT" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="bntThem" runat="server" OnClick="bntThem_Click" Text="THÊM" />
&nbsp;&nbsp;
                        <asp:Button ID="bntXoa" runat="server" OnClick="bntXoa_Click" Text="XÓA" Width="59px" />
&nbsp;&nbsp;
                        <asp:Button ID="bntSua" runat="server" OnClick="bntSua_Click" Text="SỬA" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DANH SÁCH TIN TỨC HIỆN CÓ</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="GridTable" runat="server" Width="745px">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
