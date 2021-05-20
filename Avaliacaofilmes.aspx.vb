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
        genero.Text = generoo.ToString()
        conexao.Close()
    End Sub

    Protected Sub adicionar_Click(sender As Object, e As EventArgs) Handles adicionar.Click
        conexao.Open()
        Dim sql2 As String = String.Empty
        sql2 = "select * from filmes where nome_filme = '" + nomefilme.Text + "'"

        Dim dt2 As New DataTable
        Dim adapter2 As New SqlDataAdapter
        Dim command2 As SqlCommand = New SqlCommand(sql2, conexao)
        adapter2 = New SqlDataAdapter(sql2, conexao)
        Dim userData2 As New DataTable
        adapter2.Fill(userData2)
        If userData2.Rows.Count > 0 Then
            If avaliacao.Text = "" Or nota.Text = "" Then
                MsgBox("Nota e/ou Avaliação em branco! Por favor preencha!", MsgBoxStyle.Critical, "<< Ocorreu um erro! Detalhes: >>")

            Else
                Dim sql As String = String.Empty

                sql = "select * from avaliacao_filmes where nome_filme = '" + nomefilme.Text + "' and usuario='" + Session("usuario") + "'"

                Dim dt As New DataTable
                Dim adapter As New SqlDataAdapter
                Dim command As SqlCommand = New SqlCommand(sql, conexao)
                adapter = New SqlDataAdapter(sql, conexao)
                Dim userData As New DataTable
                adapter.Fill(userData)
                If userData.Rows.Count > 0 Then
                    MsgBox("Você já realizou uma avaliação para este filme! Por favor escolha outro!", MsgBoxStyle.Critical, "<< Ocorreu um erro! Detalhes: >>")

                Else
                    Dim insert = New SqlCommand("insert into avaliacao_filmes(usuario,nome_filme,nota,avaliacao) values('" + Session("usuario").ToString() + "','" + nomefilme.Text + "','" + nota.Text + "','" + avaliacao.Text + "')", conexao)
                    insert.ExecuteNonQuery()
                    MsgBox("Avaliação Cadastrada!", MsgBoxStyle.Information, "<< Aviso! >>")

                End If
                nomefilme.Text = ""
                idioma.Text = ""
                diretor.Text = ""
                produtora.Text = ""
                dtlanc.Text = ""
                parte.Text = ""
                tempo.Text = ""
                genero.Text = ""
                nota.Text = ""
                avaliacao.Text = ""
                conexao.Close()
            End If
        Else
            MsgBox("Nome do filme em branco! Por favor escolha um filme!", MsgBoxStyle.Critical, "<< Ocorreu um erro! Detalhes: >>")

        End If
    End Sub
End Class