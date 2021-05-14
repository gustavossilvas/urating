<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="busca.aspx.vb" Inherits="urating.busca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 385px;
        }
        .auto-style3 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        

    <asp:DataList ID="DlistUser" runat="server" DataSourceID="urating" Width="580px" CssClass="auto-style3">
        <ItemTemplate>
            <table>
                <tr>
                    <td rowspan="2">
            <asp:Image ID="Image1" runat="server" Height="90px" Width="75px" ImageUrl='<%# Eval("foto") %>' />
                        </td>
                    <td class="auto-style2">

                        <asp:Label ID="Label1" runat="server" ForeColor="White" Text='<%# Eval("usuario") %>'></asp:Label>

                    </td>
                    </tr>
                <tr>
                    <td style="text-align: right" class="auto-style2">

                        <asp:Button ID="adicionar" runat="server" CommandName="add" Text="+ Amigo" Width="88px" CommandArgument='<%# Eval("usuario") %>' />
                        <asp:Button ID="verperfil" runat="server" CommandName="perfil" Height="32px" OnClick="Button1_Click" Text="Ver Perfil" Width="85px" CommandArgument='<%# Eval("usuario") %>' />
                        

                    </td>
                </tr>
                </table>
        </ItemTemplate>
    </asp:DataList>


    <asp:SqlDataSource ID="urating" runat="server" ConnectionString="<%$ ConnectionStrings:friendflixDBConnectionString %>" SelectCommand="SELECT * FROM [usuarios] WHERE ([usuario] LIKE '%' + @usuario + '%') ORDER BY [id]">
        <SelectParameters>
            <asp:SessionParameter Name="usuario" SessionField="busca" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


        </asp:Content>
