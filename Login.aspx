<% @ Page Title="Urating | Login Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.vb" Inherits="urating._Login" %>

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
        width: 49px;
    }
    .auto-style4 {
        margin-left: 33px;
    }
    .auto-style5 {
        margin-left: 0px;
    }
    .auto-style6 {
        margin-left: 97px;
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
					
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Faça Seu Login</h3>
		      	<form action="#" class="signin-form">
		      		<div class="form-group">
		      			<table class="nav-justified">
                            <tr>
                                <td class="auto-style2">Usuário</td>
                                <td>
                                    <asp:TextBox ID="username" runat="server" ForeColor="Black" Width="250px" CssClass="auto-style4" ValidateRequestMode="Enabled"></asp:TextBox>
                                </td>
                            </tr>
                            
                            <tr>
                                <td class="auto-style2">Senha
                                <td>
                                    <asp:TextBox ID="senha" runat="server" ForeColor="Black" Width="250px" TextMode="Password" CssClass="auto-style4" ValidateRequestMode="Enabled"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
&nbsp;</div>
	         
	            <div class="form-group d-md-flex">
	
						
	                <asp:Button ID="Button1" runat="server" BackColor="#990000" BorderColor="#990000" BorderStyle="Dashed" OnClientClick="" Text="Login" CssClass="auto-style5" Width="118px" />
	
						
	              
	
						
	                <asp:Button ID="Button2" runat="server" BackColor="#990000" BorderColor="#990000" BorderStyle="Dashed" OnClientClick="" Text="Registre-se" CssClass="auto-style6" PostBackUrl="Register.aspx" Width="129px" />
	
						
	              
	
						
	            </div>
	          </form>


		      </div>
				    <asp:Label ID="mensagem" runat="server"></asp:Label>
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
