Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.UI.WebControls
Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.Configuration
Imports System.Data
Imports System.IO
Imports System.Linq

Public Class CadastroLivros
    Inherits System.Web.UI.Page

    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If Not String.IsNullOrEmpty(nomelivro.Text) Then
            Dim sqlselect As String = String.Empty
            sqlselect = "select * from livros where nome_livro = '" + nomelivro.Text + "'"
            Dim dt As New DataTable
            Dim adapter As New SqlDataAdapter
            Dim command As SqlCommand = New SqlCommand(sqlselect, conexao)
            adapter = New SqlDataAdapter(sqlselect, conexao)
            Dim userData As New DataTable
            adapter.Fill(userData)

            Dim sqlselect2 As String = String.Empty
            sqlselect2 = "select * from filalivros where nome_livro = '" + nomelivro.Text + "'"
            Dim dt2 As New DataTable
            Dim adapter2 As New SqlDataAdapter
            Dim command2 As SqlCommand = New SqlCommand(sqlselect2, conexao)
            adapter2 = New SqlDataAdapter(sqlselect2, conexao)
            Dim userData2 As New DataTable
            adapter2.Fill(userData2)



            If userData.Rows.Count > 0 Then
                Response.Write("<script language=""javascript"">window.alert('Este livro já esta cadastrado em nosso sistema!');</script>")
                nomelivro.Text = ""
                idioma.Text = ""
                autorlivro.Text = ""
                editoralivro.Text = ""
                dtpubli.Text = ""
                paginas.Text = ""
                descricao.Text = ""
                edicao.Text = ""
            Else
                If userData2.Rows.Count > 0 Then
                    Response.Write("<script language=""javascript"">window.alert('O Livro já está na fila de aprovações! Aguarde o Admin aprovar. Obrigado!');</script>")
                    nomelivro.Text = ""
                    idioma.Text = ""
                    autorlivro.Text = ""
                    editoralivro.Text = ""
                    dtpubli.Text = ""
                    paginas.Text = ""
                    descricao.Text = ""
                    edicao.Text = ""
                Else
                    Dim gender = ""
                    For Each i As Integer In genero.GetSelectedIndices
                        gender = gender & genero.Items(i).ToString & ","

                    Next
                    gender = gender.Remove(gender.Length - 1)
                    conexao.Open()
                    cmd = conexao.CreateCommand()
                    cmd.CommandType = CommandType.Text
                    cmd.CommandText = "INSERT INTO [dbo].[filalivros]
           ([nome_livro]
           ,[idioma]
           ,[nome_autor]
           ,[nome_editora]
           ,[data_publicacao]
           ,[edicao]
           ,[paginas]
           ,[link_capa]
           ,[genero]
           ,[descricao])
             VALUES('" + nomelivro.Text + "','" + idioma.SelectedItem.Value + "','" + autorlivro.Text + "','" + editoralivro.Text + "','" + dtpubli.Text + "','" + edicao.Text + "','" + paginas.Text + "','" + imagembase64.Value + "','" + gender.ToString + "','" + descricao.Text + "')"
                    cmd.ExecuteNonQuery()

                    Response.Write("<script language=""javascript"">window.alert('A série foi incluida na lista de aprovações! Espere o Admin aprovar para avaliar!');</script>")
                    nomelivro.Text = ""
                    idioma.Text = ""
                    autorlivro.Text = ""
                    editoralivro.Text = ""
                    dtpubli.Text = ""
                    paginas.Text = ""
                    descricao.Text = ""
                    edicao.Text = ""

                    conexao.Close()
                End If
            End If

        Else
                Response.Write("<script language=""javascript"">window.alert('Nome do Livro em branco! Por favor preencha!');</script>")
            End If



    End Sub
End Class