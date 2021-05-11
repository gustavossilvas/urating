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


Public Class Avaliacaofilmes
    Inherits System.Web.UI.Page

    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub




    Protected Sub complete(sender As Object, e As CommandEventArgs)
        conexao.Open()
        Dim sql As String = String.Empty

        sql = "select * from filmes where nome_filme = '" + e.CommandArgument.ToString() + "'"

        Dim dt As New DataTable
        Dim adapter As New SqlDataAdapter
        Dim command As SqlCommand = New SqlCommand(sql, conexao)
        adapter = New SqlDataAdapter(sql, conexao)
        Dim userData As New DataTable
        adapter.Fill(userData)

        Dim nome_filme As Object = userData.Rows.Item(0).Item("nome_filme")
        Dim idiomaa As Object = userData.Rows.Item(0).Item("idioma")
        Dim nome_diretor As Object = userData.Rows.Item(0).Item("nome_diretor")
        Dim nome_produtora As Object = userData.Rows.Item(0).Item("nome_produtora")
        Dim lancamaento As Object = userData.Rows.Item(0).Item("data_lancamento")
        Dim partee As Object = userData.Rows.Item(0).Item("parte")
        Dim tempoo As Object = userData.Rows.Item(0).Item("tempo")
        Dim generoo As Object = userData.Rows.Item(0).Item("genero")

        nomefilme.Text = nome_filme
        idioma.Text = idiomaa
        diretor.Text = nome_diretor
        produtora.Text = nome_produtora
        dtlanc.Text = lancamaento.ToString()
        parte.Text = partee
        tempo.Text = tempoo.ToString()
        genero.SelectedValue = generoo.ToString()

    End Sub
End Class