<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="../../../resources/css/coletas/coletasIncluir.css">
      <link rel="stylesheet" href="../../../resources/css/modal.css">
      <link rel="stylesheet" href="../../../resources/css/pattern.css">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="  crossorigin="anonymous"></script>

      <link rel="shortcut icon" href="../../../resources/img/logo-navbar.png" type="image/x-icon">
      <title>Incluir Coletas | TechLog</title>
    </head>

    <body id="body-incluir">
	  <jsp:include page="../../../resources/tags/header.jsp" />
      <main class="main-content">
        <section class="panel-container">
          <img src="../../resources/img/coletas/caminhao.gif" alt="" class="panel-img">
          <h1>Inclusão de coletas</h1>
          <p>Em poucos cliques sua coleta estará agendada!</p>
        </section>
        <form class="form-container">
          <div class="form-group">
            <label for="exampleFormControlSelect1">Lista fornecedores:</label>
            <select class="form-control" id="input-clients">
              <option id="input-clients-disabled" value=""selected disabled>-selecione-</option>
              <c:forEach items="${listaFornecedores }" var="fornecedor" varStatus="loop">
                <option value="${fornecedor.nome}" tabindex="${loop.index}">${fornecedor.nome }</option>
              </c:forEach>
            </select>
          </div>
          <div class="form-group">
            <label for="exampleFormControlSelect1">Prioridade:</label>
            <select class="form-control" id="input-priority">
              <option id="input-priority-disabled" value=""selected disabled>-selecione-</option>
              <option value="BAIXA">baixa</option>
              <option value="MÉDIA">média</option>
              <option value="ALTA">alta</option>
            </select>
          </div> 


          <div class="form-group">
            <label for="exampleFormControlSelect1">Data:</label>
            <input type="date" name="" id="input-date" class="form-control" />
          </div>


          <div class="form-group">
            <label for="exampleFormControlTextarea1">Observação</label>
            <textarea class="form-control" id="input-obervation" rows="2"></textarea>
          </div>

          <div class="form-buttons">
            <button type="button" class="btn btn-secondary" onclick="backToHome()">Cancelar</button>
            <button type="button" class="btn btn-success" onclick="validateData()">Cadastrar</button>
          </div>
        </form>
      </main>

      <div id="myModal" class="modal">
        <div class="modal-content">
          <span class="close">&times;</span>
          <p>Coleta incluída com sucesso!!!</p>
          <p>Deseja continuar incluindo coletas?</p>
          <div class="button-modal">
            <button type="button" class="btn btn-secondary" onclick="backToHome()">Cancelar</button>
            <button type="button" class="btn btn-success" onclick="closeModal()">Continuar</button>
          </div>
        </div>
      </div>

      <script src="../../../resources/js/navbar-load.js"></script>
      <script src="../../../resources/js/modal.js"></script>
      <script src="../../../resources/js/coletas/incluirColeta.js"></script>

    </body>

    </html>