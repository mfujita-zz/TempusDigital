<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listagem.aspx.cs" Inherits="TempusDigital.Listagem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <title>Listagem</title>
        <style>
        body {
            background: rgb(182,250,242);
        }
        .container { height: 25%; }
            .arredondado {
                border-radius: 22%;
                width: 120px;
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
    

        <h2>Listagem de clientes</h2>

        <form id="form1" runat="server">
           <div class="container">
            <div>
                <table class="table table-striped">
                        <% Response.Write(saida); %>
                </table>
            </div>
        </div>
        </form>
    
         <div class="card text-center">
            <p class="card-text">Tempus Digital</p>
            <p class="card-text">Soluções inteligentes</p>
        </div>
    </div>
</body>
</html>