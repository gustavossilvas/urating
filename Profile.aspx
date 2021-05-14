<%@ Page Title="Perfil" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Profile.aspx.vb" Inherits="urating.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container-fluid">
      
        <div class="row">
          
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <asp:Image ID="foto" runat="server" Width="200px"></asp:Image>
                            <br />
                            <br />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Seu Perfil</h4>
                           <span>Status da Conta - </span>
                           <asp:Label class="badge badge-pill badge-danger"  ID="status" runat="server" Text="Seu Status"></asp:Label>
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
                           <asp:TextBox CssClass="form-control" ID="nome" runat="server" placeholder="Nome Completo" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Data de Nascimento</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="dtnasc" runat="server" placeholder="Data Nascimento"  ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Nome de Usuário</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="username" runat="server" placeholder="Nome de Usuário" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>UF</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="uf" runat="server" placeholder="UF" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Cidade</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="cidade" runat="server" placeholder="Cidade" ReadOnly="True"></asp:TextBox>
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
                           <asp:TextBox class="form-control" ID="username2" runat="server" placeholder="Usuário" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Senha Antiga</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="oldpass" runat="server" placeholder="Senha Antiga" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nova Senha</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="newpass" runat="server" placeholder="Nova Senha" ></asp:TextBox>
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
         </div>
        
         </div>
      
   </div>
</asp:Content>
