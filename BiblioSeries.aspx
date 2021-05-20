<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="BiblioSeries.aspx.vb" Inherits="urating.BiblioSeries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
       <br />
       <br />
       <br />
       <br />
    <br />
   <div class="container-fluid">
      <div class="row">
         <div class="col">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Lista de séries</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:friendflixDBConnectionString %>" SelectCommand="SELECT * FROM [series]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="tabelaseries" runat="server" AutoGenerateColumns="False" DataKeyNames="id_serie" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="id_serie" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id_serie" />

                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("nome_serie") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>   
                                                            
                                                        </div>
                                                    </div>

                                                        <div class="row">
                                                        <div class="col-12">
                                                            
                                                            Diretor -
                                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# Eval("nome_diretor") %>'></asp:Label>
                                                            &nbsp;| Gênero -
                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# Eval("genero") %>'></asp:Label>
                                                            &nbsp;| Idioma -
                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("idioma") %>'></asp:Label>
                                                            
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-12">
                                                            
                                                            Plataforma -
                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("nome_plataforma") %>'></asp:Label>
                                                            &nbsp;| Data de Lançamento -
                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("data_lancamento", "{0:d}") %>'></asp:Label>
                                                            
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-12">
                                                            
                                                            Temporada -
                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("temporada") %>'></asp:Label>
                                                            &nbsp;| Tempo médio de cada episódio -
                                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("tempo", "{0}") %>'></asp:Label>
                                                            
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-12">
                                                            
                                                            
                                                            Descrição -
                                                                                                                        
                                                            <asp:Label ID="descricao" runat="server" Text='<%# Eval("descricao") %>' Font-Bold="True" Font-Italic="True" Font-Size="Small"></asp:Label>
                                                                                                                        
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <br />
                                                                          <center>                                  
                                                            <asp:LinkButton ID="select" class="btn btn-lg btn-block btn-danger" runat="server" Text="Selecionar" Width="211px" CommandArgument='<%# Eval("nome_serie") %>' OnCommand="selecionarserie"/>
                                                                           </center>                                      
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <asp:Image class="img-fluid" ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("link_capa") %>' />
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
   </div>
</asp:Content>
