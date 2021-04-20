<%@ Page Title="Perfil" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Profile.aspx.vb" Inherits="urating.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 32px;
            height: 32px;
        }
    </style>
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
                           <img width="85px" src="user.png"/>
                            <p>

                            </p>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Seu Perfil</h4>
                           <span>Status da Conta - </span>
                           <asp:Label class="badge badge-pill badge-danger" ID="Label1" runat="server" Text="Seu Status"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Nome Completo</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Nome Completo"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Data de Nascimento</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>UF</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem Text="AC" Value="AC"/>
                                            <asp:ListItem Text="AL" Value="AL"/>
                                            <asp:ListItem Text="AM" Value="AM"/>
                                            <asp:ListItem Text="AP" Value="AP"/>
                                            <asp:ListItem Text="BA" Value="BA"/>
                                            <asp:ListItem Text="CE" Value="CE"/>
                                            <asp:ListItem Text="DF" Value="DF"/>
                                            <asp:ListItem Text="ES" Value="ES"/>
                                            <asp:ListItem Text="GO" Value="GO"/>
                                            <asp:ListItem Text="MA" Value="MA"/>
                                            <asp:ListItem Text="MG" Value="MG"/>
                                            <asp:ListItem Text="MS" Value="MS"/>
                                            <asp:ListItem Text="MT" Value="MT"/>
                                            <asp:ListItem Text="PA" Value="PA"/>
                                            <asp:ListItem Text="PB" Value="PB"/>
                                            <asp:ListItem Text="PE" Value="PE"/>
                                            <asp:ListItem Text="PI" Value="PI"/>
                                            <asp:ListItem Text="PR" Value="PR"/>
                                            <asp:ListItem Text="RJ" Value="RJ"/>
                                            <asp:ListItem Text="RN" Value="RN"/>
                                            <asp:ListItem Text="RS" Value="RS"/>
                                            <asp:ListItem Text="RO" Value="RO"/>
                                            <asp:ListItem Text="RR" Value="RR"/>
                                            <asp:ListItem Text="SC" Value="SC"/>
                                            <asp:ListItem Text="SE" Value="SE"/>
                                            <asp:ListItem Text="SP" Value="SP"/>
                                            <asp:ListItem Text="TO" Value="TO"/>
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Cidade</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Cidade"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <p>
                   </p>
                 
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-danger">Credenciais de Login</span>
                        </center>
                         <p>

                         </p>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Usuário</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Usuário" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Senha Antiga</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Senha Antiga" TextMode="Password" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nova Senha</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Nova Senha" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button1" runat="server" Text="Atualizar" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="HomePage.aspx"><< Voltar para a Home</a><br><br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="75px" src="rating.png"/>
                            <p>

                            </p>
                           
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Suas Avaliações</h4>
                           <asp:Label class="badge badge-pill badge-danger" ID="Label2" runat="server" Text="Livros/Séries/Filmes"></asp:Label>
                            <br />
                            <h6>
                            <asp:RadioButton ID="livros" runat="server" GroupName ="avaliacoes" /> Livros
                            <asp:RadioButton ID="series" runat="server" GroupName ="avaliacoes"/> Séries
                            <asp:RadioButton ID="filmes" runat="server" GroupName ="avaliacoes"/> Filmes</h6>
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
