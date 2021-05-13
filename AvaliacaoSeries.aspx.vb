﻿Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.UI.WebControls
Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.Configuration
Imports System.Data
Imports System.IO
Imports System.Linq
Public Class AvaliacaoSeries
    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub complete(sender As Object, e As CommandEventArgs)
        conexao.Open()
        Dim sql As String = String.Empty

        sql = "select * from series where nome_serie = '" + e.CommandArgument.ToString() + "'"

        Dim dt As New DataTable
        Dim adapter As New SqlDataAdapter
        Dim command As SqlCommand = New SqlCommand(sql, conexao)
        adapter = New SqlDataAdapter(sql, conexao)
        Dim userData As New DataTable
        adapter.Fill(userData)

        Dim nome_filme As Object = userData.Rows.Item(0).Item("nome_serie")
        Dim idiomaa As Object = userData.Rows.Item(0).Item("idioma")
        Dim nome_diretor As Object = userData.Rows.Item(0).Item("nome_diretor")
        Dim nome_produtora As Object = userData.Rows.Item(0).Item("nome_plataforma")
        Dim lancamaento As Object = userData.Rows.Item(0).Item("data_lancamento")
        Dim partee As Object = userData.Rows.Item(0).Item("temporada")
        Dim tempoo As Object = userData.Rows.Item(0).Item("tempo")
        Dim generoo As Object = userData.Rows.Item(0).Item("genero")

        nomeserie.Text = nome_filme
        idioma.Text = idiomaa
        nomediretor.Text = nome_diretor
        nomeplataforma.Text = nome_produtora
        dtlanc.Text = lancamaento.ToString()
        temporada.Text = partee
        tempo.Text = tempoo.ToString()
        genero.Text = generoo.ToString()
        conexao.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        conexao.Open()
        Dim sql2 As String = String.Empty
        sql2 = "select * from series where nome_serie = '" + nomeserie.Text + "'"

        Dim dt2 As New DataTable
        Dim adapter2 As New SqlDataAdapter
        Dim command2 As SqlCommand = New SqlCommand(sql2, conexao)
        adapter2 = New SqlDataAdapter(sql2, conexao)
        Dim userData2 As New DataTable
        adapter2.Fill(userData2)

        If userData2.Rows.Count > 0 Then
            If avaliacao.Text = "" Or nota.Text = "" Then
                Response.Write("<script language=""javascript"">alert('Nota e/ou Avaliação em branco! Por favor preencha!');</script>")
            Else
                Dim sql As String = String.Empty

                sql = "select * from avaliacao_series where nome_serie = '" + nomeserie.Text + "' and usuario='" + Session("usuario") + "'"

                Dim dt As New DataTable
                Dim adapter As New SqlDataAdapter
                Dim command As SqlCommand = New SqlCommand(sql, conexao)
                adapter = New SqlDataAdapter(sql, conexao)
                Dim userData As New DataTable
                adapter.Fill(userData)
                If userData.Rows.Count > 0 Then
                    Response.Write("<script language=""javascript"">alert('Você já realizou uma avaliação para esta série! Por favor escolha outra!');</script>")
                Else
                    Dim insert = New SqlCommand("insert into avaliacao_series(usuario,nome_serie,nota,avaliacao) values('" + Session("usuario").ToString() + "','" + nomeserie.Text + "','" + nota.Text + "','" + avaliacao.Text + "')", conexao)
                    insert.ExecuteNonQuery()
                    Response.Write("<script language=""javascript"">alert('Avaliação cadastrada!');</script>")

                End If

                nomeserie.Text = ""
                idioma.Text = ""
                nomediretor.Text = ""
                nomeplataforma.Text = ""
                dtlanc.Text = ""
                temporada.Text = ""
                tempo.Text = ""
                genero.Text = ""
                nota.Text = ""
                avaliacao.Text = ""
                conexao.Close()
            End If
        Else
                Response.Write("<script language=""javascript"">alert('Nome da série em branco! Por favor escolha uma série!');</script>")
        End If

        conexao.Close()
    End Sub
End Class