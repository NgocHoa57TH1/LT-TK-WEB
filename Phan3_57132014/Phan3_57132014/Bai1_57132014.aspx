<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai1_57132014.aspx.cs" Inherits="Phan3_57132014.Bai011" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 195px; width: 366px">
    
        Nhập giá trị a:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
        <br />
        <br />
        Nhập giá trị b:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtB" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCong" runat="server" OnClick="btnCong_Click" Text="Cộng" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnTru" runat="server" OnClick="btnTru_Click" Text="Trừ" Width="42px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnNhan" runat="server" OnClick="btnNhan_Click" Text="Nhân" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnChia" runat="server" OnClick="btnChia_Click" Text="Chia" Width="50px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLamlai" runat="server" OnClick="btnLamlai_Click" Text="Làm Lại" Width="56px" />
        <br />
        <br />
        Kết quả:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtKetqua" runat="server" ReadOnly="True"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
