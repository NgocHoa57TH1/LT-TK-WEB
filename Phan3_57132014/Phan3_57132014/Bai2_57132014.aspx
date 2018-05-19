<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai2_57132014.aspx.cs" Inherits="Phan3_57132014.Bai2_57132014" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 237px">
    




        Giải và biện luận phương trình bậc 1 ( ax + b = 0)<br />
        <br />
        <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
        x&nbsp;&nbsp;&nbsp; +&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtB" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; =&nbsp;&nbsp;&nbsp; 0<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnGiai" runat="server" OnClick="btnGiai_Click" Text="Giải" Width="60px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLamlai" runat="server" OnClick="btnLamlai_Click" Text="Làm lại" />
        <br />
        <br />
        Kết quả:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtKetqua" runat="server" ReadOnly="True"></asp:TextBox>
    




    </div>
    </form>
</body>
</html>
