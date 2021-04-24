 <%@ Page Title="Urating | Landing Page" Language="VB" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="landingPage.aspx.vb" Inherits="urating._landingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <section>
      <img src="" class="img-fluid"/>
   </section>
   <section>
      <div class="container">
          <div class="jumbotron" style="background-color: #8b0909; color:white;">
            <div class="row">
                <div class="col-10">
                    </div>
                <div class="col-2">
                    <asp:Button ID="Button1" class="btn btn-lg btn-block btn-danger" runat="server" Text="Entrar"/>
                </div>
                
            </div>
         <div class="row">
            <div class="col-12">
               <center>
                    <img src="uratingLogo.png" width="20%"/>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="150px" src=""/>
                  <h4>Livros</h4>
                  <p class="text-justify">Você que é apaixonado por livros, tem dúvida sobre sua próxima leitura?
                                        Busque por avaliações sobre os melhores títulos de seus autores preferidos e não erre nunca mais na escolha de seus livros. Além disso, aproveite e deixe sua opinião sobre os livros que já leu, fazendo análises e críticas!</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src=""/>
                  <h4>Séries</h4>
                  <p class="text-justify">Fanático por maratona de séries, você encontrou o seu lugar! Venha participar de uma enorme comunidade, compartilhando sua avaliação sobre todas as séries maratonadas por você. 
                      Faça analises, leia críticas, faça amigos e nunca mais erre quando o assunto for série!!</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src=""/>
                  <h4>Filmes</h4>
                  <p class="text-justify">Você está cansado da mesmice? Abre a TV e está cansado de rondar os filmes disponíveis?
                     Aqui você poderá escolher um filme a partir de avalições feita por amigos aqui em nossa plataforma. Mas você também pode participar fazendo sua análise ou comentando todas que desejar!
                    </p>
               </center>
            </div>
         </div>
      </div>
      </div>
   </section>
   <section>
   </section>

   <section>
      <div class="container">
        <div class="jumbotron" style="background-color: #8b0909; color:white;">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Comece</h2>
                  <p><b>Mude sua forma de escolha. Seja um uRater! </b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <a href="Register.aspx" style="text-decoration: none; color:white;"><img width="150px" src="cadastro.png" />
                  <h4  >Registre-se</h4>
                  <p class="text-justify">Crie sua conta no uRating para aproveitar a melhor comunidade de avaliações de séries, filmes e livros! E o melhor, faça tudo isso com seus amigos, adicionando em sua lista de amigos, curtindo e comentando avaliações!! </p>
                      </a>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="avaliacaolanding.png" href="Avaliacaofilmes.aspx"/>
                  <h4>Avalie seus títulos preferidos!</h4>
                  <p class="text-justify">Avalie livros, filmes e séries baseando-se em sua experiência pessoal, criando e promovendo debates a respeito de críticas e analises já existentes! Aqui a sua opinião é o ponto chave da comunidade!</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="avaliacaopessoas.png" href="MovieRating.aspx"/>
                  <h4>Leia outras avaliações</h4>
                  <p class="text-justify">Acompanhe outros pontos de vista sobre seus títulos preferidos e tudo o que pensam a respeito deles. Além disso, faça comentários apresentando o que acha daquela obra e crie debates incríveis!</p>
               </center>
            </div>
         </div>
      </div>
          </div>
   </section>
</asp:Content>
