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
Public Class BiblioSeries
    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub selecionarserie(sender As Object, e As CommandEventArgs)

        Session("serie") = e.CommandArgument
        Response.Redirect("Pagserie.aspx")
    End Sub
End Class