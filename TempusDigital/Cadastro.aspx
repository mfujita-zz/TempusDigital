<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="TempusDigital.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <title>Cadastro de clientes</title>
    <style>
        body {
            background: rgb(182,250,242);
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="Index.aspx">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Cadastro.aspx">Cadastro de clientes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Listagem.aspx">Listagem de clientes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Relatorio.aspx">Relatório</a>
                </li>
            </ul>
        </nav>

            <h2>Cadastro de clientes</h2>

            <div>
                <table class="table">
                    <tr>
                        <td><asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label></td>
                        <td><asp:TextBox ID="txtNome" runat="server" MaxLength="150" required></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblNascimento" runat="server" Text="Data de nascimento"></asp:Label></td>
                        <td><asp:TextBox ID="txtNascimento" runat="server" required></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblRenda" runat="server" Text="Renda familiar"></asp:Label> </td>
                        <td><asp:TextBox ID="txtRendaFamiliar" runat="server"></asp:TextBox> </td>
                    </tr>
                </table>
            </div>
            <p></p>
            <div class="text-center">
                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
            </div>
        </div>
    </form>

    <p></p>

    <div class="card text-center">
        <p class="card-text">Tempus Digital</p>
        <p class="card-text">Soluções inteligentes</p>
    </div>
</body>
</html>
