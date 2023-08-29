<%@ Page Title="" Language="VB" MasterPageFile="~/librarymaster.master" AutoEventWireup="false" CodeFile="category.aspx.vb" Inherits="category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 100%;
        }
        .newStyle2
        {
            border: medium solid #000000;
        }
        .newStyle3
        {
            border: medium inset #FFFFFF;
        }
        .style20
        {
            width: 292px;
            height: 27px;
        }
        .style22
        {
            width: 242px;
        }
        .style23
        {
            width: 242px;
            height: 27px;
        }
        .newStyle4
        {
            border: medium double #000000;
        }
        .style27
        {
            width: 292px;
        }
        .style28
        {
            width: 242px;
            height: 29px;
        }
        .style29
        {
            width: 292px;
            height: 29px;
        }
        .style30
        {
            width: 242px;
            height: 28px;
        }
        .style31
        {
            width: 292px;
            height: 28px;
        }
        .style32
        {
            border: medium double #000000;
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" 
            Text="Books Category"></asp:Label>
</p>
<p>
        &nbsp;</p>
    <table class="style13">
        <tr>
            <td align="center" class="style22">
                <asp:Label ID="Label2" runat="server" CssClass="font" Text="Classic"></asp:Label>
            </td>
            <td align="center" class="style22">
                <asp:Label ID="Label3" runat="server" CssClass="font" Text="Tragedy"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style22">
                <asp:Image ID="Image1" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="200px" ImageUrl="~/images/Books/Old-Bookcase.jpg" Width="300px" />
            </td>
            <td align="center" class="style27">
                <asp:Image ID="Image2" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="200px" ImageUrl="~/images/Books/Romeo-Juliet.jpg" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="style23">
            </td>
            <td class="style20">
            </td>
        </tr>
        <tr>
            <td align="center" class="style22">
                <asp:Label ID="Label4" runat="server" CssClass="font" Text="Sci-Fi"></asp:Label>
            </td>
            <td align="center" class="style22">
                <asp:Label ID="Label5" runat="server" CssClass="font" Text="Fantasy"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style28">
                <asp:Image ID="Image3" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="200px" ImageUrl="~/images/Books/goodreads_misc.png" Width="300px" />
            </td>
            <td align="center" class="style29">
                <asp:Image ID="Image4" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="200px" ImageUrl="~/images/Books/fantasy.jpg" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22" align="center">
                <asp:Label ID="Label6" runat="server" CssClass="font" 
                    Text="Action and Adventure"></asp:Label>
            </td>
            <td class="style22" align="center">
                <asp:Label ID="Label9" runat="server" CssClass="font" Text="Humor and Satire"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td class="style22">
                <asp:Image ID="Image5" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="400px" 
                    ImageUrl="~/images/Books/cover-edition-Treasure-Island-Robert-Louis-Stevenson1.jpg" 
                    Width="300px" />
            </td>
            <td class="style27">
                <asp:Image ID="Image6" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="400px" ImageUrl="~/images/Books/novel.jpg" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="style28">
            </td>
            <td class="style29">
            </td>
        </tr>
        <tr>
            <td class="style22" align="center">
                <asp:Label ID="Label8" runat="server" CssClass="font" Text="Romance"></asp:Label>
            </td>
            <td class="style22" align="center">
                <asp:Label ID="Label7" runat="server" CssClass="font" 
                    Text="Crime &amp; Mystery"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td class="style22">
                <asp:Image ID="Image7" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="200px" 
                    ImageUrl="~/images/Books/romantic-novels_759_valentines-day.jpg" 
                    Width="300px" />
            </td>
            <td class="style27">
                <asp:Image ID="Image8" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="200px" ImageUrl="~/images/Books/gone_girl_books_fb.jpg" 
                    Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22" align="center">
                <asp:Label ID="Label10" runat="server" CssClass="font" Text="Horror"></asp:Label>
            </td>
            <td class="style22" align="center">
                <asp:Label ID="Label11" runat="server" CssClass="font" Text="Comics"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td class="style30">
                <asp:Image ID="Image9" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="400px" ImageUrl="~/images/Books/best-seller1.jpg" Width="300px" />
            </td>
            <td class="style31">
                <asp:Image ID="Image10" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="400px" ImageUrl="~/images/Books/Watchmen_HC.jpg" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td class="style22">
                <asp:Label ID="Label12" runat="server" CssClass="font" Text="Biography"></asp:Label>
            </td>
            <td class="style22">
                <asp:Label ID="Label13" runat="server" CssClass="font" Text="Memoirs"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td class="style22">
                <asp:Image ID="Image11" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="400px" ImageUrl="~/images/Books/Diary-of-a-young-girl.jpg" 
                    Width="300px" />
            </td>
            <td class="style27">
                <asp:Image ID="Image12" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="400px" ImageUrl="~/images/Books/Memoir1.jpg" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="style30">
                </td>
            <td class="style31">
                </td>
        </tr>
        <tr>
            <td class="style22" align="center">
                <asp:Label ID="Label14" runat="server" CssClass="font" Text="Cookbooks"></asp:Label>
            </td>
            <td class="style27" align="center">
                <asp:Label ID="Label15" runat="server" CssClass="font" Text="True Stories"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td class="style22">
                <asp:Image ID="Image13" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="400px" ImageUrl="~/images/Books/download (5).jpeg" Width="300px" />
            </td>
            <td class="style27">
                <asp:Image ID="Image14" runat="server" BorderColor="#00CC00" BorderStyle="Solid" 
                    Height="400px" ImageUrl="~/images/Books/the-good-people.jpg" 
                    Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
    </table>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>

