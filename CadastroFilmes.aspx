<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="CadastroFilmes.aspx.vb" Inherits="urating.CadastroFilmes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">

       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();
               var k=0
               reader.onload = function (e) {
                   $('#imgview').attr('src', e.target.result);
               };
               
               reader.readAsDataURL(input.files[0]);
               while (k < 1) {
                   k= k + 1;
               }
               if (k == 1) {
               var img = document.getElementById('imgview');
               img.crossOrigin = 'Anonymous';
                   img.onload = function () {
                       var canvas = document.createElement('canvas');
                       var ctx = canvas.getContext('2d');
                       canvas.height = this.naturalHeight;
                       canvas.width = this.naturalWidth;
                       ctx.drawImage(this, 0, 0);
                       var data = canvas.toDataURL('image/jpeg');
                       $('#<%= imagembase64.ClientID %>').val(data);
                   }
               }
           }

       }



   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div class="container-fluid">
      <div class="row">

         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Cadastro de Filme</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img id="imgview" src="filme.png" width="150px"/>
                            <asp:HiddenField ID="imagembase64" runat="server" />
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
                        <label>Insira a capa do filme</label>
                        <div class="form-group">
                           <asp:FileUpload onchange="readURL(this);" class="form-control" ID="capa" runat="server" />
                        </div>
                     </div>
                  </div>
                  <div class="row">
                      <br />
                     <div class="col-md-12">
                        <label>Nome do Filme</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="nomefilme" runat="server" placeholder="Nome do Filme"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Idioma</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="idioma" runat="server">
                              <asp:ListItem Text="Português" Value="Português" />
                              <asp:ListItem Text="Inglês" Value="Inglês" />
                              <asp:ListItem Text="Alemão" Value="Alemão" />
                              <asp:ListItem Text="Espanhol" Value="Espanhol" />
                              <asp:ListItem Text="Francês" Value="Francês" />
                              <asp:ListItem Text="Outros" Value="Outros" />
                           </asp:DropDownList>
                        </div>
                        <label>Nome da Produtora</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="nomeprodutora" runat="server" placeholder="Nome da Produtora"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nome do Diretor</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="nomediretor" runat="server" placeholder="Nome do Diretor"></asp:TextBox>
                        </div>
                        <label>Data de Lançamento</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="dtlancamento" runat="server" placeholder="Data de Lançamento" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Gênero</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="genero" runat="server" SelectionMode="Multiple" Rows="5">
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
                        <label>Parte</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="parte" runat="server" TextMode="Number" placeholder="Use 1 se não existir continuação"></asp:TextBox>
                        </div>
                     </div>
                    
                     <div class="col-md-4">
                        <label>Tempo de Filme</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="tempofilme" runat="server" placeholder="Tempo de Filme" TextMode="Time"></asp:TextBox>
                        </div>
                     </div>
                  </div>                
                  <div class="row">
                     <div class="col-12">
                        <label>Descrição</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="descricao" runat="server" placeholder="Faça um breve resumo do filme" TextMode="MultiLine" Rows="5"></asp:TextBox>
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
      </div>
   </div>
</asp:Content>
