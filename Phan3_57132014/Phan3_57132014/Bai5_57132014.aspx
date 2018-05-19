<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai5_57132014.aspx.cs" Inherits="Phan3_57132014.Bai5_57132014" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 171px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TÌM CÁC SỐ NGUYÊN TỐ TỪ 1 ĐẾN N<br />
            Nhập vào một số nguyên dương n:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtN" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Hiển thị" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLamlai" runat="server" OnClick="btnLamlai_Click" Text="Làm lại" />
            <br />
            <br />
            Kết quả:&nbsp;&nbsp; <asp:TextBox ID="txtKQ" runat="server" ReadOnly="True" Width="304px"></asp:TextBox>
        </div>
    </form>
</body>
</html>
