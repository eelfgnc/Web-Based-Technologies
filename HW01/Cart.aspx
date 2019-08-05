<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="HW01.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 727px;
            height: 2763px;
            margin-left: 320px;
            margin-right: 0px;
        }
        .auto-style4 {
            text-align: center;
            height: 71px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2" style="background-color: #FFFF77">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="80px">
            <div class="auto-style4">
                <br />
                <asp:Button ID="btn_returntomain" runat="server" Height="33px" Font-Size="15px" OnClick="btn_returntomain_Click" Text="Return to Main Page" Width="202px" />
                <br />
                <asp:Label ID="lblinf" runat="server" Text="Label" Font-Size="20px"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </asp:Panel>
    </form>
</body>
</html>
