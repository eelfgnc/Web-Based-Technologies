<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookInfo.aspx.cs" Inherits="HW01.BookInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 146px;
            text-align: center;
            margin-left: 280px;
            width: 801px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            width: 100%;
            height: 352px;
        }
        .auto-style3 {
            width: 413px;
        }
        .auto-style4 {
            width: 280px;
        }
        .auto-style5 {
            height: 594px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style5" style="background-color:#B0DBA4">
    <div class="auto-style1">
        <asp:Panel ID="pnlwarning" runat="server" BackColor="#FFB366" Height="140px">
            <br />
            <asp:Label ID="lblwarning" runat="server" Text="Label" Font-Size="30px"></asp:Label>
            <br />
            <asp:Button ID="btnreturntomain" runat="server" Text="Return to Main Page" Font-Size="20px" OnClick="btnreturntomain_Click"/>
        </asp:Panel>
        <br />
        <table class="auto-style2" runat="server" id="table" style="border-style: solid; background-color: #B0DBA4">
            <tr>
                <td class="auto-style3">
                    <br />
                    <br />
                    <asp:Image ID="imgbook" runat="server" Height="350px" Width="250px" />
                </td>
                <td class="auto-style4">

                    <br />
                    <br />

                    <asp:Label ID="lbltitle" runat="server" Text="Label" Font-Size="30px" Font-Overline="False" Font-Underline="True"></asp:Label>

                    <br />
                    <asp:Label ID="bookauthor" runat="server" Text="Author: " Font-Size="20px"></asp:Label>
                    <asp:Label ID="lblauthor" runat="server" Text="Label" Font-Size="20px"></asp:Label>
                    <br />
                    <asp:Label ID="bookpublisher" runat="server" Text="Publisher: " Font-Size="20px"></asp:Label>
                    <asp:Label ID="lblpublisher" runat="server" Text="Label" Font-Size="20px"></asp:Label>
                    <br />
                    <asp:Label ID="bookpage" runat="server" Text="Page Number: " Font-Size="20px"></asp:Label>
                    <asp:Label ID="lblpages" runat="server" Text="Label" Font-Size="20px"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnaddcart" runat="server" Text="Add to Cart" OnClick="btnaddcart_Click" />
                    <br />
                    <br />
&nbsp;<asp:Button ID="btnshowcart" runat="server" Text="Display Shopping Cart" OnClick="btnshowcart_Click" />
                    <br />
                    <br />
&nbsp;<asp:Button ID="btnmainpage" runat="server" Text="Return to Main Page" OnClick="btnreturntomain_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lbltocart" runat="server" Text="Book is added to shopping cart." Font-Size="15px" BackColor="#FF5151"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lbltolist" runat="server" Text="Book is already in the list." Font-Size="15px" BackColor="#D176A4"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
