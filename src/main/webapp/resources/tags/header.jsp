<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="../resources/css/reset.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="../resources/css/navbar.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</head>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand"  href="javascript:backToHome();"><img id="logo-navbar" src="../resources/img/logo-navbar.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Coletas
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="/coletas/incluir">Incluir</a>
                <a class="dropdown-item" href="/coletas/alterar">Alterar</a>
                <a class="dropdown-item" href="/coletas/excluir">Excluir</a>
                <a class="dropdown-item" href="/coletas/consultar">Consultar</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Home Coletas</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Veículos
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="/veiculos/incluir">Incluir</a>
                <a class="dropdown-item" href="/veiculos/alterar">Alterar</a>
                <a class="dropdown-item" href="/veiculos/excluir">Excluir</a>
                <a class="dropdown-item" href="/veiculos/consultar">Consultar</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Home Veículos</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Colaboradores
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="/colaboradores/incluir">Incluir</a>
                <a class="dropdown-item" href="#">Alterar</a>
                <a class="dropdown-item" href="#">Excluir</a>
                <a class="dropdown-item" href="#">Consultar</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Home Colaboradores</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Fornecedores/Compradores
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="/clientes/incluir">Incluir</a>
                <a class="dropdown-item" href="/clientes/alterar">Alterar</a>
                <a class="dropdown-item" href="/clientes/excluir">Excluir</a>
                <a class="dropdown-item" href="/clientes/consultar">Consultar</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Home Fornecedores</a>
              </div>
            </li>
            
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" aria-label="Pesquisar">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
          </form>
        </div>
      </nav>
      <form id="form-redirect" action="/home" method="post" hidden>
        <input id="remember-me-checked" type="text" name="remember" value="">
      </form>
</header>