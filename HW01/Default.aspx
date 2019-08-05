
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HW01.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
        .auto-style1 {
            height: 611px;
            margin-top: 0px;
        }
          .auto-style2 {
              margin-left: 160px;
          }
      </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
    <div class="auto-style2">
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="117px" Width="1046px" BackColor="#D58EB4" BorderStyle="Solid">
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblwelcome" runat="server" Font-Size="30px" Text="Welcome, "></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncart" runat="server" Text="Cart"  Font-Size="20px" Width="94px" OnClick="btncart_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnlogout" runat="server" Text="Logout" Font-Size="20px" Width="103px" OnClick="btnlogout_Click" />
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" Height="308px" BackColor="#D58EB4" Width="1044px" BorderStyle="Solid">
                <br />
                <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black" NavigateUrl="BookInfo.aspx?id=1" Font-Size="15pt">ASP.NET 3.5 Unleashed</asp:HyperLink>
                <br />
                <br />
                <br />           
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Black" NavigateUrl="BookInfo.aspx?id=2" Font-Size="15pt">ASP.NET Evolution</asp:HyperLink>
                <br />
                <br />
                <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Black" NavigateUrl="BookInfo.aspx?id=3" Font-Size="15pt">Mastering Web Develop ment with Microsoft Visual Studio 2005</asp:HyperLink>
                <br />
                <br />
                <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" ForeColor="Black" NavigateUrl="BookInfo.aspx?id=4" Font-Size="15pt">Beginning ASP.NET 2.0</asp:HyperLink>
                 <br />
                <br />
                <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" ForeColor="Black" NavigateUrl="BookInfo.aspx?id=5" Font-Size="15pt">Beginning ASP.NET 3.5 in C# 2008: From Novice to Professional, Second Edition</asp:HyperLink>
            </asp:Panel>
        </asp:Panel>

    </div>
    </form>
</body>
</html>
