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

Public Class GerenciaCadseries
    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub aprovarserie(sender As Object, e As CommandEventArgs)
        conexao.Open()
        Dim sql2 As String = String.Empty

        sql2 = "select * from filaseries where nome_serie = '" + e.CommandArgument.ToString() + "'"

        Dim dt2 As New DataTable
        Dim adapter2 As New SqlDataAdapter
        Dim command2 As SqlCommand = New SqlCommand(sql2, conexao)
        adapter2 = New SqlDataAdapter(sql2, conexao)
        Dim userData2 As New DataTable
        adapter2.Fill(userData2)

        Dim nomeserie = userData2.Rows.Item(0).Item("nome_serie").ToString()
        Dim idioma = userData2.Rows.Item(0).Item("idioma").ToString()
        Dim nomediretor = userData2.Rows.Item(0).Item("nome_diretor").ToString()
        Dim nomeprodutora = userData2.Rows.Item(0).Item("nome_plataforma").ToString()
        Dim datalancamento = userData2.Rows.Item(0).Item("data_lancamento").ToString()
        Dim parte = userData2.Rows.Item(0).Item("temporada").ToString()
        Dim tempo = userData2.Rows.Item(0).Item("tempo").ToString()
        Dim linkcapa = userData2.Rows.Item(0).Item("link_capa").ToString()
        Dim genero = userData2.Rows.Item(0).Item("genero").ToString()
        Dim descr = userData2.Rows.Item(0).Item("descricao").ToString()

        Dim insert = New SqlCommand("insert into series ([nome_serie]
           ,[idioma]
           ,[nome_diretor]
           ,[nome_plataforma]
           ,[data_lancamento]
           ,[temporada]
           ,[tempo]
           ,[link_capa]
           ,[genero]
           ,[descricao]) values('" + nomeserie + "','" + idioma + "','" + nomediretor + "','" + nomeprodutora + "','" + datalancamento + "','" + parte + "','" + tempo + "','" + linkcapa + "','" + genero + "','" + descr + "')", conexao)
        insert.ExecuteNonQuery()
        Response.Write("<script language=""javascript"">alert('Série aprovado');</script>")
        Dim delete = New SqlCommand("delete from filaseries where nome_serie = '" + e.CommandArgument + "'", conexao)
        delete.ExecuteNonQuery()
        DataBind()


        conexao.Close()
    End Sub
    Protected Sub reprovarserie(sender As Object, e As CommandEventArgs)
        conexao.Open()
        Response.Write("<script language=""javascript"">alert('Série reprovada!');</script>")
        Dim delete = New SqlCommand("delete from filaseries where nome_serie = '" + e.CommandArgument + "'", conexao)
        delete.ExecuteNonQuery()
        DataBind()
        conexao.Close()
    End Sub
End Class