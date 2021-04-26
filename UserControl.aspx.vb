Imports System.Data.SqlClient

Public Class WebForm5

    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Private da As SqlDataAdapter
    Dim cmd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        tabelausuarios.DataBind()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles deleteuser.Click
        If Not String.IsNullOrEmpty(username.Text) Then
            Dim sqlselect As String = String.Empty
            sqlselect = "select * from usuarios where usuario = '" + username.Text + "'"
            Dim dt As New DataTable
            Dim adapter As New SqlDataAdapter
            Dim command As SqlCommand = New SqlCommand(sqlselect, conexao)
            adapter = New SqlDataAdapter(sqlselect, conexao)
            Dim userData As New DataTable
            adapter.Fill(userData)


            If userData.Rows.Count > 0 Then
                conexao.Open()
                cmd = conexao.CreateCommand()
                cmd.CommandType = CommandType.Text
                cmd.CommandText = "DELETE from usuarios where usuario = '" + username.Text + "'"
                cmd.ExecuteNonQuery()
                tabelausuarios.DataBind()




                Response.Write("<script language=""javascript"">window.alert('Usuário deletado com sucesso!');</script>")
                username.Text = ""
                fullname.Text = ""
                status.Text = ""
                uf.Text = ""
                dtnasc.Text = ""
                cidade.Text = ""
                navaliacoes.Text = ""
                namigos.Text = ""
                funcao.Text = ""
                conexao.Close()
            Else
                Response.Write("<script language=""javascript"">window.alert('Usuário não existe!');</script>")
                username.Text = ""
                fullname.Text = ""
                status.Text = ""
                uf.Text = ""
                dtnasc.Text = ""
                cidade.Text = ""
                navaliacoes.Text = ""
                namigos.Text = ""
                funcao.Text = ""
            End If
        Else
            Response.Write("<script language=""javascript"">window.alert('Usuário em branco!');</script>")

        End If
    End Sub

    Protected Sub makeadmin_Click(sender As Object, e As EventArgs) Handles makeadmin.Click
        conexao.Open()
        cmd = conexao.CreateCommand()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "update usuarios set isAdmin = 1 where usuario = '" + username.Text + "'"
        cmd.ExecuteNonQuery()
        tabelausuarios.DataBind()
        Response.Write("<script language=""javascript"">window.alert('Função de usuário alterada com sucesso!');</script>")
        conexao.Close()

    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        conexao.Open()
        cmd = conexao.CreateCommand()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "update usuarios set status = 'Ativo' where usuario = '" + username.Text + "'"
        cmd.ExecuteNonQuery()
        tabelausuarios.DataBind()
        Response.Write("<script language=""javascript"">window.alert('Status de usuário alterado com sucesso!');</script>")
        conexao.Close()

    End Sub
    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click
        conexao.Open()
        cmd = conexao.CreateCommand()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "update usuarios set status = 'Pendente' where usuario = '" + username.Text + "'"
        cmd.ExecuteNonQuery()
        tabelausuarios.DataBind()
        Response.Write("<script language=""javascript"">window.alert('Status de usuário alterado com sucesso!');</script>")
        conexao.Close()

    End Sub
    Protected Sub LinkButton3_Click(sender As Object, e As EventArgs) Handles LinkButton3.Click
        conexao.Open()
        cmd = conexao.CreateCommand()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "update usuarios set status = 'Bloqueado' where usuario = '" + username.Text + "'"
        cmd.ExecuteNonQuery()
        tabelausuarios.DataBind()
        Response.Write("<script language=""javascript"">window.alert('Status de usuário alterado com sucesso!');</script>")
        conexao.Close()

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        conexao.Open()
        cmd = conexao.CreateCommand()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "select * from usuarios where usuario = '" + username.Text + "'"
        cmd.ExecuteNonQuery()
        Dim da As New SqlDataAdapter(cmd)
        Dim table As New DataTable()
        da.Fill(table)
        If table.Rows.Count >= 1 Then
            username.Text = table.Rows(0)(1).ToString()
            fullname.Text = table.Rows(0)(2).ToString()
            status.Text = table.Rows(0)(11).ToString()
            uf.Text = table.Rows(0)(6).ToString()
            dtnasc.Text = table.Rows(0)(4).ToString()
            cidade.Text = table.Rows(0)(5).ToString()
            navaliacoes.Text = table.Rows(0)(12).ToString()
            namigos.Text = table.Rows(0)(9).ToString()
            If table.Rows(0)(8) = False Then
                funcao.Text = "Usuário"
            Else
                funcao.Text = "Admin"

            End If
            conexao.Close()
        Else
                Response.Write("<script language=""javascript"">window.alert('Usuário não encontrado!');</script>")
        End If
    End Sub

    Protected Sub tabelausuarios_SelectedIndexChanged(sender As Object, e As EventArgs) Handles tabelausuarios.SelectedIndexChanged


    End Sub
End Class