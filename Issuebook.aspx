<%@ Page Title="" Language="VB" MasterPageFile="~/librarymaster.master" AutoEventWireup="false" CodeFile="Issuebook.aspx.vb" Inherits="Issuebook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        font-family: "Arial Black";
        font-size: xx-large;
    }
        .style9
        {
            width: 179px;
        }
        .style10
        {
            width: 179px;
            height: 26px;
        }
        .style11
        {
            height: 26px;
        }
        .style12
        {
            width: 179px;
            height: 33px;
        }
        .style13
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <span class="style8"><strong style="font-family: Bahnschrift">Book issue</strong></span><br />
</p>
    <table class="style1">
        <tr>
            <td class="style9">
    <asp:Label ID="Label1" runat="server" Text="Student id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstudid" runat="server"></asp:TextBox>
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
    <asp:Label ID="Label2" runat="server" Text="Book id"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtbookid" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnselect" runat="server" Text="Go" />
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
            <td class="style9">
    <asp:Label ID="Label4" runat="server" Text="Book name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style11">
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
                <asp:Button ID="btnreturn" runat="server" Text="Return Book" />
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style11">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="studentid" HeaderText="Student id" />
                        <asp:BoundField DataField="bookid" HeaderText="Book id" />
                        <asp:BoundField DataField="studentname" HeaderText="Student Name" />
                        <asp:BoundField DataField="bookname" HeaderText="Book name" />
                        <asp:BoundField DataField="issuedate" HeaderText="Issue date" />
                        <asp:BoundField DataField="returndate" HeaderText="Return date" />
                    </Columns>
                </asp:GridView>
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

