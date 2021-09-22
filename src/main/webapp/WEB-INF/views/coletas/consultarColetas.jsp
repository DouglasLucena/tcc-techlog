<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="../../../resources/css/coletas/coletasConsultar.css">
      <link rel="stylesheet" href="../../../resources/css/modal.css">
      <link rel="stylesheet" href="../../../resources/css/pattern.css">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="  crossorigin="anonymous"></script>

      <link rel="shortcut icon" href="../../../resources/img/logo-navbar.png" type="image/x-icon">
      <title>Consultar Coletas | TechLog</title>
    </head>

    <body id="body-incluir">
	  <jsp:include page="../../../resources/tags/header.jsp" />
      <main class="main-content">
        <section class="panel-container">
          <img src="../../resources/img/coletas/caminhao.gif" alt="" class="panel-img">
          <h1>Consulta de coletas</h1>
        </section>
        <form class="form-container">
          <div class="form-group">
            <label for="exampleFormControlSelect1">Selecione a coleta:</label>
            <select class="form-control" id="exampleFormControlSelect1">
              <option value=""selected disabled>-selecione-</option>
              <option>baixa</option>
              <option>média</option>
              <option>alta</option>
            </select>
          </div>
          <div class="form-group">
            <label for="exampleFormControlSelect1">Lista fornecedores:</label>
            <select class="form-control" id="exampleFormControlSelect1">
              <option value=""selected disabled>-selecione-</option>
              <c:forEach items="${listaFornecedores }" var="fornecedor">
                <option>${fornecedor.nome }</option>
              </c:forEach>
            </select>
          </div>
          <div class="form-group">
            <label for="exampleFormControlSelect1">Prioridade:</label>
            <select class="form-control" id="exampleFormControlSelect1">
              <option value=""selected disabled>-selecione-</option>
              <option>baixa</option>
              <option>média</option>
              <option>alta</option>
            </select>
          </div>


          <div class="form-group">
            <label for="exampleFormControlSelect1">Data:</label>
            <input type="date" name="" id="input-date" class="form-control" />
          </div>


          <div class="form-group">
            <label for="exampleFormControlTextarea1">Observação</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="2"></textarea>
          </div>

          <div class="form-buttons">
            <button type="button" class="btn btn-secondary" onclick="backToHome()">Cancelar</button>
            <button type="button" class="btn btn-success" onclick="">Cadastrar</button>
          </div>
        </form>
      </main>

      <script src="../../../resources/js/navbar-load.js"></script>
      <script src="../../../resources/js/model.js"></script>
      <script src="../../../resources/js/coletas/incluir.js"></script>

    </body>

    </html>