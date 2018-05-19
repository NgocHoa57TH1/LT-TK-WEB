<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai7_57132014.aspx.cs" Inherits="Phan3_57132014.Bai7_57132014" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 416px; width: 675px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" BorderColor="#6600FF" Font-Bold="True" ForeColor="#3333FF" Text=" ĐĂNG KÍ THÔNG TIN CÁ NHÂN"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp; Mã sinh viên&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Họ tên&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp; Ngày sinh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNS" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giới tính&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rbtnM" runat="server" Text="Nam" />
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rbtnW" runat="server" Text="Nữ" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Ngành học&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="tdList1" runat="server" Height="25px" OnSelectedIndexChanged="tdList1_SelectedIndexChanged" Width="164px">
                <asp:ListItem>Công nghệ thông tin</asp:ListItem>
                <asp:ListItem>Kế toán- Tài chính</asp:ListItem>
                <asp:ListItem>Công nghệ chế biến</asp:ListItem>
                <asp:ListItem>Công nghê thực phẩm</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Sở thích&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="c1" runat="server" Text="Du Lịch" />
&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="c2" runat="server" Text="Âm nhạc" />
&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="c3" runat="server" Text="Thể Thao" />
&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="c4" runat="server" Text="Lĩnh vực khác" />
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnXN" runat="server" OnClick="btnXN_Click" Text="Xác Nhận" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ảnh
            <asp:Image ID="Image1" runat="server" Height="66px" Width="84px" />
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
            <asp:TextBox ID="txtIn" runat="server" Height="102px" TextMode="MultiLine" Width="533px"></asp:TextBox>
            <br />
        </div>
    </form>
</body>
</html>
