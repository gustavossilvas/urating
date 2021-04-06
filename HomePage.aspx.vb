Imports System.Data.SqlClient
Imports urating._Login


Public Class _HomePage
    Inherits Page


    Public Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim getUsuario As String = Session.Item("usuario")
        userInfo.Text = getUsuario

    End Sub




End Class