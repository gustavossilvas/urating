<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Paglivro.aspx.vb" Inherits="urating.Paglivro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     
      <div class ="container-fluid">
        <div class="row">       
         <div class="col">
             <div class="col-md-8 offset-2">
             <div class="card">
               <div class="card-body">
                  <div class="row">
                      <div class="col">                         
                        <br />
                        <br />
                        <center>

                            <asp:Image  class="img-fluid" ID="imagem" runat="server" Width="350px" />
                            <br />
                            <br />
                         </center>
        
                        </div>
                      </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <asp:Label  ID="nomelivro" runat="server" Text="Label" ForeColor="Black" Font-Bold="True" Font-Italic="True" Font-Names="Bahnschrift" Font-Overline="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True"></asp:Label>
                                &nbsp;
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:DataList ID="DlistUser" runat="server" DataSourceID="SqlDataSource1" Width="580px" CssClass="auto-style3">
                                <ItemTemplate>
                                    <table>
                                        <tr>
                                            <td rowspan="2">
                                                 <asp:Image ID="Image1" runat="server" Height="90px" Width="75px" ImageUrl='<%# Eval("foto") %>' />
                                            </td>
                                            <td class="auto-style2">

                                                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text='<%# Eval("usuario") %>'></asp:Label>

                                            </td>
                                            </tr>
                                            <tr>
                                            <td style="text-align: left" class="auto-style2">

                                                <asp:TextBox ID="TextBox1" runat="server" Height="43px" Width="709px" Text='<%# Eval("avaliacao") %>' ReadOnly="True" ></asp:TextBox>
                                            

                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("id_avaliacao") %>' CommandName="comentar" Height="40px" Text="Comentar" Width="80px" />
                                                <asp:Button class="btn btn-success mr-1" ID="like" runat="server" Text="Like" CommandArgument='<%# Eval("usuario") %>' CommandName="like" Height="40px" Width="80px" ></asp:Button> 
                                                <asp:Label ID="nlikes" runat="server" Text='<%# Eval("likes", "{0}") %>' Height="40px" Width="80px"></asp:Label>
                                            </td>
                                            </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                             
                                
                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:friendflixDBConnectionString %>" SelectCommand="select b.foto,a.* from avaliacao_livros a
inner join usuarios b on a.usuario = b.usuario
where nome_livro = @nome_livro
order by likes desc">
                                <SelectParameters>
                                    <asp:SessionParameter Name="nome_livro" SessionField="livro" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                             
                                
                            
                        </div>
                    </div>


    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>         
            </div>
               
            
         



</asp:Content>
