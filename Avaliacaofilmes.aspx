<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Avaliacaofilmes.aspx.vb" Inherits="urating.Avaliacaofilmes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Detalhes do Filme</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="filme.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <br />
                      
                     <div class="col-md-12">
                        <label>Nome do filme</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="nomefilme" runat="server" placeholder="Nome do Filme" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Idioma</label>
                        <div class="form-group" >
                        <asp:TextBox CssClass="form-control" ID="idioma" runat="server" placeholder="Idioma" ReadOnly="True"></asp:TextBox>
                        </div>
                        <label>Nome da Produtora</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="produtora" runat="server" placeholder="Nome da Produtora" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nome do Diretor</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="diretor" runat="server" placeholder="Nome do Diretor" ReadOnly="true"></asp:TextBox>
                        </div>
                        <label>Data de Lançamento</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="dtlanc" runat="server" placeholder="Data de Lançamento" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Gênero</label>
                          <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="genero" runat="server" placeholder="Gênero" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Parte</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="parte" runat="server" TextMode="Number" placeholder="Parte" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nota</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="nota" runat="server" placeholder="0 - 10" TextMode="Number" min="0" max="10"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Tempo médio do filme</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="tempo" runat="server" placeholder="Tempo médio do filme" TextMode="Time" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>                
                  <div class="row">
                     <div class="col-12">
                        <label>Avaliação</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="avaliacao" runat="server" placeholder="Faça um breve resumo da sua opinião sobre o filme em até 1024 caracteres" TextMode="MultiLine" Rows="5" MaxLength="1024"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                      
                     <div class="col-12">
                         <br />
                      <br />
                         <br />
                      <br />
                         
                        <asp:Button ID="adicionar" class="btn btn-lg btn-block btn-success" runat="server" Text="Adicionar" />
                         <br />
                         <br />
                         <br />
                     </div>
                  </div>
               </div>
            </div>

            <br>
         </div>
          <div class="col-md-7">
          <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Lista de Filmes</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:friendflixDBConnectionString %>" SelectCommand="SELECT * FROM [filmes]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="tabelafilmes" ReadOnly="False" runat="server" AutoGenerateColumns="False" DataKeyNames="id_filme" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="id_filme" HeaderText="ID" InsertVisible="False" ReadOnly="False" SortExpression="id_filme" />

                                <asp:TemplateField >
                                    <ItemTemplate>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("nome_filme") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>   
                                                            
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
                                                            
                                                            Produtora -
                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("nome_produtora") %>'></asp:Label>
                                                            &nbsp;| Data de Lançamento -
                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("data_lancamento", "{0:d}") %>'></asp:Label>
                                                            
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-12">
                                                            
                                                            Parte -
                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("parte") %>'></asp:Label>
                                                            &nbsp;| Tempo de filme -
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
                                                            <asp:LinkButton ID="select" class="btn btn-lg btn-block btn-danger" runat="server" Text="Selecionar" Width="211px" CommandArgument='<%# Eval("nome_filme") %>' OnCommand="complete" />
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
   </div>
</asp:Content>