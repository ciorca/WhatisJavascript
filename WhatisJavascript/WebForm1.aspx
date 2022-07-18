<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WhatisJavascript.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">
        function ValidateForm() {
            var ret = true;
            if (document.getElementById("txtFirstName").value == "") {
                document.getElementById("lblFirstName").innerText = "First Name is required";
                ret = false;
            }
            else {
                document.getElementById("lblFirstName").innerText = "";
            }

            if (document.getElementById("txtLastName").value == "") {
                document.getElementById("lblLastName").innerText = "Last Name is required";
                ret = false;
            }
            else {
                document.getElementById("lblLastName").innerText = "";
            }

            if (document.getElementById("txtEmail").value == "") {
                document.getElementById("lblEmail").innerText = "Email is required";
                ret = false;
            }
            else {
                document.getElementById("lblEmail").innerText = "";
            }

            return ret;
        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border:1px solid black; font-family:Arial">
    <tr>
        <td>
            <b>First Name</b>
        </td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:Label ID="lblFirstName" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <b>Last Name</b>
        </td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:Label ID="lblLastName" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <b>Email</b>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:Label ID="lblEmail" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit"  onclick="btnSubmit_Click"  OnClientClick="ValidateForm()"/>
        </td>
    </tr>
</table>
                    </div>
    </form>
</body>
</html>
