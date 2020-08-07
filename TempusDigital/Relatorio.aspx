<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Relatorio.aspx.cs" Inherits="TempusDigital.Relatorio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />

    <title>Relatório dos clientes</title>
    <style>
        body {
            background: rgb(182,250,242);
        }
    </style>
</head>
<body>
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

    <h2>Relatório de clientes</h2>

    <form id="form1" runat="server">
        <div>

            <div class="card-group">
                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">Maior de 18 anos e renda familiar superior a média</h5>
                        <p class="card-text"><%Response.Write(RendaAcimaMedia); %></p>
                    </div>
                </div>
                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">Classes de acordo com a renda familiar</h5>
                        <p class="card-text">Classe A: <%Response.Write(QtdeClasseA); %></p>
                        <p class="card-text">Classe B: <%Response.Write(QtdeClasseB); %></p>
                        <p class="card-text">Classe C: <%Response.Write(QtdeClasseC); %></p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <span><a href="#" class="btn btn-primary">Mês</a></span>
                        <span><a href="#" class="btn btn-primary">Semana</a></span>
                        <span><a href="#" class="btn btn-primary">Hoje</a></span>
                        <h5 class="card-title">Acumulado</h5>
                        <p class="card-text"><%Response.Write(RendaAcimaMedia); %></p>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
