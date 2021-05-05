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

Public Class busca
    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub DlistUser_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DlistUser.ItemCommand

        If (e.CommandName = "perfil") Then
            Session("verperfil") = e.CommandArgument.ToString()
            Response.Redirect("Perfil.aspx")
        ElseIf (e.CommandName = "add") Then
            Response.Write("<script language=""javascript"">alert('Solicitação enviada');</script>")
        Else
            Response.Write("<script language=""javascript"">alert('Burro');</script>")
        End If



    End Sub
End Class