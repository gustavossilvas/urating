<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Perfil.aspx.vb" Inherits="urating.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div >
        <center>
    <asp:Image ID="imagem" runat="server" Height="187px" Width="258px" />
            <br />

            </center>
        </div>
    <div>
        <center>
        <asp:SqlDataSource ID="urating" runat="server" ConnectionString="<%$ ConnectionStrings:friendflixDBConnectionString %>" SelectCommand="SELECT * FROM [usuarios] WHERE ([usuario] = @verperfil)">
        <SelectParameters>
            <asp:SessionParameter Name="usuario" SessionField="verperfil" Type="String" />
            <asp:SessionParameter Name="foto" SessionField="fotoperfil" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="username" runat="server" Text="Label" ForeColor="White" Font-Bold="True" Font-Italic="True" Font-Names="Bahnschrift" Font-Overline="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True"></asp:Label>
        &nbsp;
        </center>
    </div>
</asp:Content>
