<%@ Page Title="Urating | Landing Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="landingPage.aspx.vb" Inherits="urating._landingPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<link rel="stylesheet" href="./Content/estilo.css" />
<script src="./Content/estilo.js"></script>

<style>
	.logoMack{
		width: 150px;

	}
	.casa{
		width: 700px;

	}

	.centralizar{
		align-content: center;
	}


</style>



<header class="showcase">
			<div class="showcase-top">
				<br />
				<img class="logoMack"src="uratingLogo.png" alt="" />
				
				<a href="Login.aspx" class="btn btn-rounded" style="right: 9px; top: 50%; width: 88px; height: 42px; font-size: x-large">Logar</a>
			</div>
			<div class="showcase-content">
				
				<h1>Leia Avaliações</h1>
				<p>Poupe tempo em suas escolhas.</p>
				<a href="Register.aspx" class="btn btn-xl"
					>Registre-se <i class="fas fa-chevron-right btn-icon"></i
				></a>
				<br />
				<br />

				<img class="casa" src="casa.png" alt="" />

			</div>
		</header>


		<section class="tab-content centralizar">
			<div class="container">
				<!-- Tab Content 1 -->
				<div id="tab-1-content" class="tab-content-item show">
					<div class="tab-1-content-inner">
						<center><div>
							<p class="text-lg">
								Projeto de alunos de Sistemas de Informação
							</p>
							<p class="text-lg">
								Universidade Presbiteriana Mackenzie | Faculdade de Computação e Informática
							</p>
							&nbsp;</div></center>
						<img class="logoMack" src="logoMack.png" alt="" />
					</div>
				</div>
				</div>
			</div>
		</section>

		
</asp:Content>
