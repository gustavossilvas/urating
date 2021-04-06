<% @ Page Title="Urating | Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.vb" Inherits="urating._HomePage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<style>
        asp {
           background-color: #292929;
        }

        .fundo{
            background-color: #292929;
            color: white;
        }
        
        .auto-style1 {
            color: #990000;
        }
        
        .auto-style2 {
        width: 49px;
    }

        .navbar-nav > li{
          paddig: 10px;
           margin-left:30px;
            margin-right:30px;
        }
            
    </style>

<link rel="stylesheet" href="Content/style.css">
	<div class="fundo" >

		<nav class="navbar navbar-expand-lg navbar-dark bg-transparent navbar-nav > li">
  <a class="navbar-brand" href="#">Urating</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Meu Perfil</a>
      </li>

      <li class="nav-item">
        <a class="nav-link disabled" href="#">Em testes</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Procurar" aria-label="procurar">
      <button class="btn btn-outline-danger my-2 my-sm-0 bg-dark" type="submit">Procurar</button>

    </form>
  </div>
</nav>


  <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h1 class="heading-section">
                        <asp:Label ID="userInfo" runat="server"></asp:Label>
                        , este é o seu <span class="auto-style1"><strong>U</strong></span>RATING!</h1>
					
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Plataforma em desenvolvimento...</h3>
		      	<form action="#" class="signin-form">
		      		<div class="form-group">
		      			<table class="nav-justified">
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
&nbsp;</div>
	         
	            <div class="form-group d-md-flex">
	
						
	              
	
						
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
