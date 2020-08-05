<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TempusDigital.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    
    <title>Home</title>
    <style>
        body {
background: rgb(182,250,242);
        }
    </style>
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarNav">
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
            </div>
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
