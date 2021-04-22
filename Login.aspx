<% @ Page Title="Urating | Login Page" Language="VB" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.vb" Inherits="urating._Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div class="container">
       <br />
        <br />
             <br />
             <br />
             <br />
        <br />
       <br />
        <br />
       <br />
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="uratingLogo.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Urater Login</h3>
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
                        <label>Usuário</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="username" runat="server" placeholder="Usuário"></asp:TextBox>
                        </div>
                        <label>Senha</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="senha" runat="server" placeholder="Senha" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button1" runat="server" Text="Login" />
                        </div>
                        <div class="form-group">
                           <a href="Register.aspx"><input class="btn btn-danger btn-block btn-lg" id="Button2" type="button" value="Registre-se" /></a>
                            

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
             <br />
             <br />
            
            
             
             
         </div>
      </div>
   </div>
</asp:Content>
