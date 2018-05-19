<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai3_57132014.aspx.cs" Inherits="Phan3_57132014.Bai3_57132014" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 219px; width: 384px; margin-left: 40px">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; GIẢI VÀ BIỆN LUẬN PTB2(ax2+bx+c=0)<br />
            <br />
            <asp:TextBox ID="txtA" runat="server" Width="64px"></asp:TextBox>
&nbsp; x2&nbsp;&nbsp;&nbsp; +&nbsp;&nbsp;
            <asp:TextBox ID="txtB" runat="server" Width="64px"></asp:TextBox>
&nbsp;x&nbsp;&nbsp; +&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtC" runat="server" Width="67px"></asp:TextBox>
&nbsp;=&nbsp;&nbsp;&nbsp; 0<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnGiai" runat="server" OnClick="btnGiai_Click" Text="Giải" Width="69px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLamlai" runat="server" OnClick="btnLamlai_Click" Text="Làm Lại" />
            <br />
            <br />
            Kết quả:&nbsp; <asp:TextBox ID="txtKQ" runat="server" ReadOnly="True" Width="247px"></asp:TextBox>

        </div>
    </form>
</body>
</html>
