<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="solicitacaoAmizade.aspx.vb" Inherits="urating.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">




    <asp:DataList ID="DataList1" runat="server" DataKeyField="id_solicitacao" DataSourceID="SqlDataSource1">
        <ItemTemplate>



            <table>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl='<%# Eval("img_envio") %>' Width="80px" />
                    </td>
                    <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text='<%# Eval("usuario_envio") %>'></asp:Label>
                        </td>
                    </tr>
            </table>
            <tr>
                <td style="text-align: right" class="auto-style2">

                        <asp:Button ID="aceitar" runat="server" CommandName="aceitar" Height="32px" Text="Aceitar" Width="88px" CommandArgument='<%# Eval("usuario_envio") %>' BackColor="#009933" BorderColor="#009933" Font-Bold="True" ForeColor="White" />
                        <asp:Button ID="negar" runat="server" CommandName="negar" Height="32px" Width="88px" Text="Rejeitar" CommandArgument='<%# Eval("usuario_envio") %>' OnClick="negar_Click" BackColor="#990000" BorderColor="#990000" Font-Bold="True" ForeColor="White" />
                        

                    </td>
            </tr>


        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:friendflixDBConnectionString %>" SelectCommand="SELECT * FROM [rel_amizade] WHERE (([status] = @status) AND ([usuario_recebimento] = @usuario_recebimento))">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
            <asp:SessionParameter Name="usuario_recebimento" SessionField="usuario" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>




</asp:Content>

