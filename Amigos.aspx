<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Amigos.aspx.vb" Inherits="urating.Amigos" %>
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
        <asp:DataList ID="DlistUser" runat="server" DataSourceID="urating" Width="1484px" CssClass="auto-style3">
        <ItemTemplate>
            <table>
                <tr>
                    <td rowspan="2">
            <asp:Image ID="Image1" runat="server" Height="90px" Width="75px" ImageUrl='<%# Eval("img_amigo") %>' />
                        </td>
                    <td class="auto-style2">

                        <asp:Label ID="Label1" runat="server" ForeColor="White" Text='<%# Eval("amigo") %>'></asp:Label>

                    </td>
                    </tr>
                <tr>
                    <td style="text-align: right" class="auto-style2">

                        <asp:Button ID="deletar" runat="server" CommandName="del" Text="X Desfazer amizade" Width="149px" CommandArgument='<%# Eval("usuario") %>' Height="32px" OnClick="adicionar_Click" />
                        <asp:Button ID="verperfil" runat="server" CommandName="perfil" Height="32px" OnClick="Button1_Click" Text="Ver Perfil" Width="149px" CommandArgument='<%# Eval("amigo") %>' />
                        

                    </td>
                </tr>
                </table>
        </ItemTemplate>
    </asp:DataList>


    <asp:SqlDataSource ID="urating" runat="server" ConnectionString="<%$ ConnectionStrings:friendflixDBConnectionString %>" SelectCommand="select id_solicitacao,case when usuario_envio = @usuario_envio then usuario_envio
							when usuario_recebimento = @usuario_recebimento then usuario_recebimento end as usuario,case when usuario_envio = @usuario_envio then usuario_recebimento
							when usuario_recebimento = @usuario_recebimento then usuario_envio end as amigo,
							case when usuario_envio = @usuario_envio then img_recebimento
							when usuario_recebimento = @usuario_recebimento then img_envio end as img_amigo,
							[status] from rel_amizade
where [status] = @status
and usuario_envio = @usuario_envio
or usuario_recebimento = @usuario_recebimento">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="usuario_envio" SessionField="usuario" />
            <asp:SessionParameter Name="usuario_recebimento" SessionField="usuario" />
            <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content> 
