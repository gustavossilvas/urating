<%@ Page Title="Urating | Register Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.vb" Inherits="urating._Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        asp {
           background-color: #292929;
        }

        .fundo{
            background-color: #292929;
     
        }
        
        .auto-style1 {
            color: #990000;
        }
        
        .auto-style2 {
            height: 28px;
        }
        
    </style>

<link rel="stylesheet" href="Content/style.css">
	<asp:Image ID="Image2" runat="server" Height="42px" ImageUrl="~/logoMack.png" Width="43px" />
	<div class="fundo">
  <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h1 class="heading-section">Bem vindo ao <span class="auto-style1"><strong>U</strong></span>RATING!</h1>
					<h2 class="heading-section">Faça seu Registro</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Registre-se</h3>
		      	<form action="#" class="signin-form">
		      		<div class="form-group">
		      			<table class="nav-justified">
                            <tr>
                                <td>Usuário</td>
                                <td>
                                    <asp:TextBox ID="usuario" runat="server" ForeColor="Black" Width="250px" ValidateRequestMode="Enabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Nome Completo</td>
                                <td>
                                    <asp:TextBox ID="nome" runat="server" ForeColor="Black" Width="250px" ValidateRequestMode="Disabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Senha</td>
                                <td>
                                    <asp:TextBox ID="senha" runat="server" ForeColor="Black" Width="250px" TextMode="Password" ValidateRequestMode="Enabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Confirmar Senha</td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="confirmaSenha" runat="server" ForeColor="Black" Width="250px" TextMode="Password" ValidateRequestMode="Enabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Data de Nascimento</td>
                                <td>
                                    <asp:TextBox ID="dataNasc" runat="server" ForeColor="Black" Width="250px" TextMode="Date" ValidateRequestMode="Enabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Cidade</td>
                                <td>
                                    <asp:TextBox ID="cidade" runat="server" ForeColor="Black" Width="250px" ValidateRequestMode="Enabled"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>UF</td>
                                <td>
                                    <asp:DropDownList ID="uf" runat="server" ForeColor="Black">
                                        
                                          
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
                                </td>
                            </tr>
                        </table>
&nbsp;</div>
	         
	            <div class="form-group d-md-flex">
	
						
	                <asp:Button ID="Button1" runat="server" BackColor="#990000" BorderColor="#990000" BorderStyle="Dashed" OnClientClick="validaSenha(); succesRegister();" Text="Registrar" />
	
						
	              
	
						
	                <asp:Button ID="Button2" runat="server" BackColor="#990000" BorderColor="#990000" BorderStyle="Dashed" Text="Login" PostBackUrl="Login.aspx" />
	
						
	              
	
						
	            </div>
	          </form>


		      </div>
				    <asp:Label ID="mensagem" runat="server" Width="50%"></asp:Label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
			</div>
		</div>
	</section>


	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

            </div>

</asp:Content>
