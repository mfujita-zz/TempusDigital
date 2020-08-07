<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TempusDigital.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    
    <title>Home</title>
    <style>
        body {
background: rgb(182,250,242);
        }
    </style>
</head>
<body>
    <div class="container">

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

        <div style="height:680px; padding:200px">
            <div class="text-center">
                <img src="images/td_logo.png" class="rounded" alt="Tempus Digital logo" />
            </div>
        </div>

        <p></p>

        
        <div class="card text-center">
            <p class="card-text">Tempus Digital</p>
            <p class="card-text">Soluções inteligentes</p>
        </div>
    </div>
</body>
</html>
