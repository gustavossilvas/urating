<%@ Page Title="URating | Avaliação de Livros" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Avaliacaolivros.aspx.vb" Inherits="urating.Avaliacaolivros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Detalhes do Livro</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="books.png" />
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
                        <label>Nome do Livro</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="nomelivro" runat="server" placeholder="Nome do Livro" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Idioma</label>
                        <div class="form-group" >
                        <asp:TextBox CssClass="form-control" ID="idioma" runat="server" placeholder="Idioma" ReadOnly="true"></asp:TextBox>
                        </div>
                        <label>Editora</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="editora" runat="server" placeholder="Nome da Editora" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nome do Autor</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="autor" runat="server" placeholder="Nome do Autor" ReadOnly="true"></asp:TextBox>
                        </div>
                        <label>Data de Publicação</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="dtpubli" runat="server" placeholder="Data de Publicação"  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Gênero</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="genero" runat="server" placeholder="genero" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Edição</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="edicao" runat="server" placeholder="Edição" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nota</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="nota" runat="server" placeholder="0 - 10" TextMode="Number" min="0" max="10"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Páginas</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="paginas" runat="server" textMode="Number" placeholder="Páginas"  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>                
                  <div class="row">
                     <div class="col-12">
                        <label>Avaliação</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="avaliacao" runat="server" placeholder="Faça um breve resumo da sua opinião sobre o Livro" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Adicionar" />
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
                           <h4>Lista de Séries</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:friendflixDBConnectionString %>" SelectCommand="SELECT * FROM [livros]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="tabelalivros" ReadOnly="False" runat="server" AutoGenerateColumns="False" DataKeyNames="id_livro" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="id_livro" HeaderText="ID" InsertVisible="False" ReadOnly="False" SortExpression="id_livro" />

                                <asp:TemplateField >
                                    <ItemTemplate>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("nome_livro") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>   
                                                            
                                                        </div>
                                                    </div>

                                                        <div class="row">
                                                        <div class="col-12">
                                                            
                                                            Autor -
                                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# Eval("nome_autor") %>'></asp:Label>
                                                            &nbsp;| Gênero -
                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# Eval("genero") %>'></asp:Label>
                                                            &nbsp;| Idioma -
                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("idioma") %>'></asp:Label>
                                                            
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-12">
                                                            
                                                            Editora-
                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("nome_editora") %>'></asp:Label>
                                                            &nbsp;| Data de Publicação -
                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("data_publicacao") %>'></asp:Label>
                                                            
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-12">
                                                            
                                                            Edição -
                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("edicao") %>'></asp:Label>
                                                            &nbsp;| Páginas -
                                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("paginas") %>'></asp:Label>
                                                            
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
                                                            <asp:LinkButton ID="select" class="btn btn-lg btn-block btn-danger" runat="server" Text="Selecionar" Width="211px" CommandArgument='<%# Eval("nome_livro") %>' OnCommand="complete" />
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