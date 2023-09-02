<%@ Page Title="" Language="VB" MasterPageFile="~/librarymaster.master" AutoEventWireup="false" CodeFile="Issuebook.aspx.vb" Inherits="Issuebook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 402px;
        }
        .style10
        {
            width: 402px;
            height: 26px;
        }
        .style12
        {
            width: 402px;
            height: 33px;
        }
        .style13
        {
            height: 33px;
        }
        .style20
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="background-color: #FFCC66">
        &nbsp;
        <asp:Label ID="Label8" runat="server" ForeColor="#FF6600" 
            style="font-size: xx-large" Text="Book issue"></asp:Label>
&nbsp; <br />
</p>
    <table class="style1">
        <tr>
            <td class="style9">
    <asp:Label ID="Label1" runat="server" Text="Student id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstudid" runat="server"></asp:TextBox>
            &nbsp;
                <asp:Button ID="btngo" runat="server" Text="Go" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
    <asp:Label ID="Label2" runat="server" Text="Book Name"></asp:Label>
            </td>
            <td class="style20">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                </asp:DropDownList>
&nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
    <asp:Label ID="Label3" runat="server" Text="Student name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style9">
    <asp:Label ID="Label5" runat="server" Text="Issue date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtissuedate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
    <asp:Label ID="Label6" runat="server" Text="Return date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtreturndate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Button ID="btnissue" runat="server" Text="Issue Book" />
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

