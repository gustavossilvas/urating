<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="UserControl.aspx.vb" Inherits="urating.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
       <br />
       <br />
       <br />
       <br />
    <br />
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Detalhes do Usuário</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="user.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Nome de Usuário</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="username" runat="server" placeholder="User"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Buscar" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nome Completo</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="fullname" runat="server" placeholder="Nome Completo" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <label>Status da Conta</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="status" runat="server" placeholder="Status da Conta" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                               
                              <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server"><i class="far fa-pause-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server"><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                  </div>
                
                   

                  <div class="row">
                     <div class="col-md-4">
                        <label>UF</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="uf" runat="server" placeholder="UF" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Cidade</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cidade" runat="server" placeholder="Cidade" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Data de Nascimento</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="dtnasc" runat="server" placeholder="Data Nascimento" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   

                  <div class="row">
                     <div class="col-4">
                        <label>Número de Avaliações</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="navaliacoes" runat="server" placeholder="Número de Avaliações" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-4">
                        <label>Número de Amigos</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="namigos" runat="server" placeholder="Número de Amigos" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-4">
                        <label>Função</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="funcao" runat="server" placeholder="Função" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <br />
                   <br />

                  <div class="row">
                     <div class="col-4 mx-auto">
                        <asp:Button ID="deleteuser" class="btn btn-lg btn-block btn-danger" runat="server" Text="Deletar Usuário" />
                     </div>
                      <div class="col-4 mx-auto">
                        <asp:Button ID="makeadmin" class="btn btn-lg btn-block btn-danger" runat="server" Text="Tornar Admin" />
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
                           <h4>Lista de Usuários</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:friendflixDBConnectionString %>" SelectCommand="SELECT [id], [usuario], [nome], [dt_nasc], [cidade], [uf], [isAdmin], [n_amigos], [status], [n_avaliacoes], [dt_cadastro] FROM [usuarios] ORDER BY [id]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="tabelausuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                                <asp:BoundField DataField="dt_nasc" HeaderText="dt_nasc" SortExpression="dt_nasc" />
                                <asp:BoundField DataField="cidade" HeaderText="cidade" SortExpression="cidade" />
                                <asp:BoundField DataField="uf" HeaderText="uf" SortExpression="uf" />
                                <asp:BoundField DataField="dt_cadastro" HeaderText="dt_cadastro" SortExpression="dt_cadastro" />
                                <asp:CheckBoxField DataField="isAdmin" HeaderText="isAdmin" SortExpression="isAdmin" />
                                <asp:BoundField DataField="n_amigos" HeaderText="n_amigos" SortExpression="n_amigos" />
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            </Columns>
                         </asp:GridView>
                     </div>
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
   </div>
</asp:Content>