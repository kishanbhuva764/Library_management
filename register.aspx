<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style12
        {
            text-align: right;
        }
        .style13
        {
            text-align: right;
            height: 30px;
        }
        .style15
        {
            text-align: right;
            height: 27px;
        }
        .style16
        {
            font-family: Calibri;
            font-weight: bold;
            font-size: xx-large;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 2px;
        }
        .style17
        {
            height: 30px;
        }
        .style18
        {
            text-align: right;
            height: 32px;
        }
        .style19
        {
            height: 32px;
        }
        .style20
        {
            height: 27px;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;<table cellpadding="2" class="style1">
            <tr>
                <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Register</span></td>
            </tr>
            <tr>
                <td style="text-align: right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    Student id :</td>
                <td>
                <asp:TextBox ID="txtsid" runat="server" Height="26px" Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td bgcolor="White" class="style13">
                First Name&nbsp; :</td>
                <td class="style17">
                <asp:TextBox ID="txtfname" runat="server" Height="26px" Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td bgcolor="White" class="style18" id="txtlname">
                Last&nbsp; Name&nbsp; :</td>
                <td id="txtlname" class="style19">
                <asp:TextBox ID="txtlname" runat="server" Height="26px" Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td bgcolor="White" class="style12">
                User Name&nbsp; :</td>
                <td>
                <asp:TextBox ID="txtuname" runat="server" Height="26px" Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td bgcolor="White" class="style15">
                Password :</td>
                <td class="style20">
                <asp:TextBox ID="txtpwd" runat="server" Height="26px" Width="164px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td bgcolor="White" class="style12">
                Conform Password :</td>
                <td>
                <asp:TextBox ID="txtcpwd" runat="server" Height="26px" Width="164px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td bgcolor="White" class="style12">
                City :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="26px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
            <td bgcolor="White" class="style12">
                Email :</td>
                <td>
                <asp:TextBox ID="txtemail" runat="server" Height="26px" Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td bgcolor="White" style="text-align: right">
                Mobile no.&nbsp; :</td>
                <td>
                <asp:TextBox ID="txtmo" runat="server" Height="26px" Width="164px" MaxLength="10" 
                        TextMode="Phone"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td bgcolor="White" class="style12">
                Gender :</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
            <td align="right" bgcolor="White">
                Date of Birth:</td>
                <td>
                    <asp:TextBox ID="txtdate" runat="server" Height="26px" TextMode="Date" 
                        Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td bgcolor="White" style="text-align: right">
                Profile Image : 
            </td>
                <td>
                    <asp:Image ID="Image1" runat="server" />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnregister" runat="server" Height="40px" Text="Register" 
                        Width="87px" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Have an account ?Log in</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
