<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai4_57132014.aspx.cs" Inherits="Phan3_57132014.Bai4_57132014" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 206px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VÍ DỤ VÒNG LẶP<br />
&nbsp;&nbsp;&nbsp;&nbsp; Nhập vào một số nguyên n &lt;5 :&nbsp;&nbsp;
            <asp:TextBox ID="txtN" runat="server" Width="179px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnWhile" runat="server" OnClick="btnWhile_Click" Text=" While" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnFor" runat="server" OnClick="btnFor_Click" Text="For" Width="64px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDoWhile" runat="server" OnClick="btnDoWhile_Click" Text="Do...While" Width="78px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLamlai" runat="server" OnClick="btnLamlai_Click" Text="Làm Lại" />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Kết quả tính tổng các số nguyên từ 1 đến n :&nbsp;&nbsp;
            <asp:TextBox ID="txtKQ" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
