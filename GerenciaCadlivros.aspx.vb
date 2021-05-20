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
Public Class GerenciaCadlivros
    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub aprovarlivro(sender As Object, e As CommandEventArgs)
        conexao.Open()
        Dim sql2 As String = String.Empty

        sql2 = "select * from filalivros where nome_livro = '" + e.CommandArgument.ToString() + "'"

        Dim dt2 As New DataTable
        Dim adapter2 As New SqlDataAdapter
        Dim command2 As SqlCommand = New SqlCommand(sql2, conexao)
        adapter2 = New SqlDataAdapter(sql2, conexao)
        Dim userData2 As New DataTable
        adapter2.Fill(userData2)

        Dim nomelivro = userData2.Rows.Item(0).Item("nome_livro").ToString()
        Dim idioma = userData2.Rows.Item(0).Item("idioma").ToString()
        Dim nomediretor = userData2.Rows.Item(0).Item("nome_autor").ToString()
        Dim nomeprodutora = userData2.Rows.Item(0).Item("nome_editora").ToString()
        Dim datalancamento = userData2.Rows.Item(0).Item("data_publicacao").ToString()
        Dim parte = userData2.Rows.Item(0).Item("edicao").ToString()
        Dim tempo = userData2.Rows.Item(0).Item("paginas").ToString()
        Dim linkcapa = userData2.Rows.Item(0).Item("link_capa").ToString()
        Dim genero = userData2.Rows.Item(0).Item("genero").ToString()
        Dim descr = userData2.Rows.Item(0).Item("descricao").ToString()

        Dim insert = New SqlCommand("insert into livros ([nome_livro]
           ,[idioma]
           ,[nome_autor]
           ,[nome_editora]
           ,[data_publicacao]
           ,[edicao]
           ,[paginas]
           ,[link_capa]
           ,[genero]
           ,[descricao]) values('" + nomelivro + "','" + idioma + "','" + nomediretor + "','" + nomeprodutora + "','" + datalancamento + "','" + parte + "','" + tempo + "','" + linkcapa + "','" + genero + "','" + descr + "')", conexao)
        insert.ExecuteNonQuery()
        Response.Write("<script language=""javascript"">alert('livro aprovado');</script>")
        Dim delete = New SqlCommand("delete from filalivros where nome_livro = '" + e.CommandArgument + "'", conexao)
        delete.ExecuteNonQuery()
        DataBind()


        conexao.Close()
    End Sub
    Protected Sub reprovarlivro(sender As Object, e As CommandEventArgs)
        conexao.Open()
        Response.Write("<script language=""javascript"">alert('livro reprovado!');</script>")
        Dim delete = New SqlCommand("delete from filalivros where nome_livro = '" + e.CommandArgument + "'", conexao)
        delete.ExecuteNonQuery()
        DataBind()
        conexao.Close()
    End Sub

End Class