<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style19
        {
            width: 100%;
        }
        .style8
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            font-weight: bold;
            text-align: left;
            height: 31px;
        }
        .style13
        {
            text-align: right;
            height: 30px;
            width: 584px;
        }
        .style14
        {
            height: 30px;
        }
        .style12
        {
            text-align: right;
            width: 584px;
        }
        .style15
        {
            text-align: right;
            height: 27px;
            width: 584px;
        }
        .style16
        {
            height: 27px;
        }
        .style17
        {
            width: 584px;
        }
        .style21
        {
            font-size: x-large;
        }
        .style24
        {
            width: 584px;
            height: 26px;
        }
        .style25
        {
            height: 26px;
        }
        .style26
        {
            font-size: xx-large;
        }
        .style28
        {
            height: 37px;
        }
        </style>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="height: 706px">
    <form id="form1" runat="server">
<div>
    
    <table class="style19">
        <tr>
            <td colspan="2" align="center">
                <span class="style26"><strong>Login Here</strong></span><span class="style21"><strong>
                </strong> </span>
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style17" align="right">
                User Name&nbsp; :</td>
            <td class="style14">
                <asp:TextBox ID="txtuname" runat="server" Height="26px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style17" align="right">
                Student id :</td>
            <td>
                <asp:TextBox ID="txtsid" runat="server" Height="26px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style17" align="right">
                Password :</td>
            <td class="style28">
                <asp:TextBox ID="txtpwd" runat="server" Height="26px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
            </td>
            <td class="style25">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style25">
                <asp:Button ID="Button1" runat="server" Height="38px" Text="Login" 
                    Width="115px" />
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style8" colspan="2">
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style13">
                &nbsp;</td>
            <td bgcolor="White">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Register</asp:HyperLink>
            </td>
        </tr>
        </table>
    
</div>
    </form>
    </body>
</html>
