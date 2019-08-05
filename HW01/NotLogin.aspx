<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NotLogin.aspx.cs" Inherits="HW01.NotLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
            .auto-style2 {
            height: 604px;
            margin-top: 0px;
        }
        .auto-style3 {
            margin-left: 450px;
        }
        .auto-style4 {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2" >
        <div class="auto-style3">

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Height="249px" Width="439px" BackColor="#CCE6FF">
                <h1 class="auto-style4">&nbsp;</h1>
            <h1 class="auto-style4">You are not logged in.</h1>
            <p class="auto-style4">
                &nbsp;</p>
            <h2 class="auto-style4">Please log in 
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" ForeColor="Black">here.</asp:HyperLink>
            </h2>
                </asp:Panel>

        </div>
    </form>
</body>
</html>
