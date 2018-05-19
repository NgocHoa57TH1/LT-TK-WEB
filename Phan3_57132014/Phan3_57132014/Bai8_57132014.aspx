<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai8_57132014.aspx.cs" Inherits="Phan3_57132014.Bai8_57132014" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            height: 23px;
            width: 149px;
        }
        .auto-style1 {
            height: 23px;
        }
        .auto-style3 {
            width: 149px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 265px">
            KHÁCH HÀNG ĐĂNG KÝ<br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">Họ tên khách hàng</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTen" ErrorMessage="Chưa nhập họ tên khách hàng" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Mật khẩu</td>
                    <td>
                        <asp:TextBox ID="txtMK" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMK" ErrorMessage="Chưa nhập mật khẩu" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Mật khẩu nhập lại</td>
                    <td>
                        <asp:TextBox ID="txtRMK" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMK" ControlToValidate="txtRMK" ErrorMessage="Mật khẩu nhập lại không giống nhau" style="color: #FF0000"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Thu nhập (Triệu đồng)</td>
                    <td>
                        <asp:TextBox ID="txtTN" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtTN" ErrorMessage="Thu nhập từ 1 đến 100 triệu đồng" MaximumValue="100" MinimumValue="1" style="color: #FF0000" Type="Double"></asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Địa chỉ email</td>
                    <td>
                        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="Địa chỉ email không hợp lệ" style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Số chẵn bạn thích</td>
                    <td>
                        <asp:TextBox ID="txtChan" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="KTS" runat="server" ControlToValidate="txtChan" ErrorMessage="Phải nhập số chẵn" OnServerValidate="KTS_ServerValidate" style="color: #FF0000"></asp:CustomValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:Button ID="btnDK" runat="server" OnClick="btnDK_Click" Text="Đăng ký" />
            <br />
            <asp:Label ID="lbTT" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
