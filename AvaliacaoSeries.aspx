<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="AvaliacaoSeries.aspx.vb" Inherits="urating.AvaliacaoSeries" %>
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
                           <h4>Detalhes da Série</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="serie.png" />
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
                        <label>Nome da Série</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Nome da Série"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Idioma</label>
                        <div class="form-group" >
                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Idioma" ReadOnly="true"></asp:TextBox>
                        </div>
                        <label>Plataforma de Streaming</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Nome da Plataforma" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nome do Diretor</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Nome do Diretor" ReadOnly="true"></asp:TextBox>
                        </div>
                        <label>Data de Lançamento</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Data de Lançamento" TextMode="Date" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Gênero</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5" ReadOnly="true">
                              <asp:ListItem Text="Ação" Value="Ação" />
                              <asp:ListItem Text="Aventura" Value="Aventura" />
                              <asp:ListItem Text="Gibi" Value="Gibi" />
                              <asp:ListItem Text="Auto-Ajuda" Value="Auto-Ajudp" />
                              <asp:ListItem Text="Motivação" Value="Motivação" />
                              <asp:ListItem Text="Vida Saudável" Value="Vida Saudável" />
                              <asp:ListItem Text="Bem Estar" Value="Bem Estar" />
                              <asp:ListItem Text="Crime" Value="Crime" />
                              <asp:ListItem Text="Drama" Value="Drama" />
                              <asp:ListItem Text="Fantasia" Value="Fantasia" />
                              <asp:ListItem Text="Horror" Value="Horror" />
                              <asp:ListItem Text="Poesia" Value="Poesia" />
                              <asp:ListItem Text="Desenvolvimento Pessoal" Value="Desenvolvimento Pessoal" />
                              <asp:ListItem Text="Romance" Value="Romance" />
                              <asp:ListItem Text="Ficção Científica" Value="Ficção Científica" />
                              <asp:ListItem Text="Suspense" Value="Suspense" />
                              <asp:ListItem Text="Arte" Value="Arte" />
                              <asp:ListItem Text="Autobiografia" Value="Autobiografia" />
                              <asp:ListItem Text="Enciclopédia" Value="Enciclopédia" />
                              <asp:ListItem Text="Saúde" Value="Saúde" />
                              <asp:ListItem Text="História" Value="História" />
                              <asp:ListItem Text="Matemática" Value="Matemática" />
                              <asp:ListItem Text="Didático" Value="Didático" />
                              <asp:ListItem Text="Ciência" Value="Ciência" />
                              <asp:ListItem Text="Viagem" Value="Viagem" />
                               <asp:ListItem Text="Outros" Value="Outros" />
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Temporada</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" TextMode="Number" placeholder="Temporada" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nota</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="0 - 5" TextMode="Number" min="0" max="5"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Tempo médio de episódio</label>
                        <div class="form-group" >
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Tempo médio de cada episódio" TextMode="Time" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>                
                  <div class="row">
                     <div class="col-12">
                        <label>Avaliação</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Faça um breve resumo da sua opinião sobre a série" TextMode="MultiLine" Rows="5"></asp:TextBox>
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
                           <h4>Séries</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>