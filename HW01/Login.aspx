<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HW01.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
            .auto-style1 {
                height: 594px;
                margin-top: 0px;
            }
            .auto-style2 {
                margin-left: 420px;
            }
            .auto-style3 {
                text-align: center;
            }
            </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
    <div class="auto-style2" >
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" BackColor="#FDD9FD" Height="284px" Width="493px" BorderStyle="Solid">
            <div class="auto-style3">
                <br />
                <asp:Label ID="lblbookstore" runat="server" Font-Size="30pt" Text="BookStore"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblfirstname" runat="server" Text="FirstName: " Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
                <br />
&nbsp;
                <asp:RequiredFieldValidator ID="rfvfirstname" runat="server" ControlToValidate="txtfirstname" ErrorMessage="İsminizi giriniz." Font-Bold="True"></asp:RequiredFieldValidator>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="lbllastname" runat="server" Text="LastName: " Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvlastname" runat="server" ControlToValidate="txtlastname" ErrorMessage="Soyadınızı girin." Font-Bold="True"></asp:RequiredFieldValidator>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Login" Width="206px" Height="33px" Font-Bold="True" />
                <br />
            </div>
        </asp:Panel>

    </div>
    </form>
</body>
</html>
