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

Public Class GerenciaCadfilmes
    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub aprovarfilme(sender As Object, e As CommandEventArgs)
        conexao.Open()
        Dim sql2 As String = String.Empty

        sql2 = "select * from filafilmes where nome_filme = '" + e.CommandArgument.ToString() + "'"

        Dim dt2 As New DataTable
        Dim adapter2 As New SqlDataAdapter
        Dim command2 As SqlCommand = New SqlCommand(sql2, conexao)
        adapter2 = New SqlDataAdapter(sql2, conexao)
        Dim userData2 As New DataTable
        adapter2.Fill(userData2)

        Dim nomefilme = userData2.Rows.Item(0).Item("nome_filme").ToString()
        Dim idioma = userData2.Rows.Item(0).Item("idioma").ToString()
        Dim nomediretor = userData2.Rows.Item(0).Item("nome_diretor").ToString()
        Dim nomeprodutora = userData2.Rows.Item(0).Item("nome_produtora").ToString()
        Dim datalancamento = userData2.Rows.Item(0).Item("data_lancamento").ToString()
        Dim parte = userData2.Rows.Item(0).Item("parte").ToString()
        Dim tempo = userData2.Rows.Item(0).Item("tempo").ToString()
        Dim linkcapa = userData2.Rows.Item(0).Item("link_capa").ToString()
        Dim genero = userData2.Rows.Item(0).Item("genero").ToString()
        Dim descr = userData2.Rows.Item(0).Item("descricao").ToString()

        Dim insert = New SqlCommand("insert into filmes ([nome_filme]
           ,[idioma]
           ,[nome_diretor]
           ,[nome_produtora]
           ,[data_lancamento]
           ,[parte]
           ,[tempo]
           ,[link_capa]
           ,[genero]
           ,[descricao]) values('" + nomefilme + "','" + idioma + "','" + nomediretor + "','" + nomeprodutora + "','" + datalancamento + "','" + parte + "','" + tempo + "','" + linkcapa + "','" + genero + "','" + descr + "')", conexao)
        insert.ExecuteNonQuery()
        Response.Write("<script language=""javascript"">alert('Filme aprovado');</script>")
        Dim delete = New SqlCommand("delete from filafilmes where nome_filme = '" + e.CommandArgument + "'", conexao)
        delete.ExecuteNonQuery()
        DataBind()


        conexao.Close()
    End Sub
    Protected Sub reprovarfilme(sender As Object, e As CommandEventArgs)
        conexao.Open()
        Response.Write("<script language=""javascript"">alert('Filme reprovado!');</script>")
        Dim delete = New SqlCommand("delete from filafilmes where nome_filme = '" + e.CommandArgument + "'", conexao)
        delete.ExecuteNonQuery()
        DataBind()
        conexao.Close()
    End Sub

End Class