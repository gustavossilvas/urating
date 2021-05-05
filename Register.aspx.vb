Imports System.Data.SqlClient

Public Class _Register
    Inherits Page

    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub confirmaSenha_TextChanged(sender As Object, e As EventArgs) Handles confirmaSenha.TextChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If (usuario.Text = "" Or nome.Text = "" Or senha.Text = "" Or dataNasc.Text = "" Or cidade.Text = "" Or uf.Text = "") Then
            Response.Write("<script language=""javascript"">alert('Preencha todos os campos.');</script>")
        Else
            conexao.Open()
            If (senha.Text <> confirmaSenha.Text) Then
                Response.Write("<script language=""javascript"">alert('As senhas não coincidem!');</script>")
            Else

                Dim insert = New SqlCommand("insert into usuarios(usuario,nome,senha,dt_nasc,cidade,uf,foto) values('" + usuario.Text + "','" + nome.Text + "','" + senha.Text + "','" + dataNasc.Text + "','" + cidade.Text + "','" + uf.Text + "','" + imagembase64.Value + "')", conexao)

                Dim sql As String = String.Empty
                sql = "select usuario from usuarios where usuario = '" + usuario.Text + "'"

                Dim dt As New DataTable
                Dim adapter As New SqlDataAdapter
                Dim command As SqlCommand = New SqlCommand(sql, conexao)
                adapter = New SqlDataAdapter(sql, conexao)
                Dim userData As New DataTable
                adapter.Fill(userData)

                If userData.Rows.Count > 0 Then

                    Response.Write("<script language=""javascript"">window.alert('Já existe um usuário com este nome, por favor escolha outro!');</script>")
                    usuario.Text = ""
                Else
                    Response.Write("<script language=""javascript"">alert(dataNasc.Text);</script>")
                    insert.ExecuteNonQuery()
                    conexao.Close()
                    Response.Write("<script language=""javascript"">alert('Usuário cadastrado com sucesso!');</script>")
                    usuario.Text = ""
                    nome.Text = ""
                    dataNasc.Text = ""
                    cidade.Text = ""
                    uf.Text = ""
                    Response.Redirect("Login.aspx")
                End If
            End If
        End If


    End Sub

    Protected Sub senha_TextChanged(sender As Object, e As EventArgs) Handles senha.TextChanged

    End Sub

    Protected Sub usuario_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub usuario_TextChanged1(sender As Object, e As EventArgs)

    End Sub
End Class