<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="../../../resources/css/veiculos/veiculosIncluir.css">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="  crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
      <link rel="shortcut icon" href="../../../resources/img/logo-navbar.png" type="image/x-icon">
      <title>Incluir Veículos | TechLog</title>
    </head>

    <body id="body-incluir">
      <jsp:include page="../../../resources/tags/header.jsp" />

      <main class="main-content">
        <section class="panel-container">
          <img src="../../resources/img/veiculos/caminhao-frente.png" alt="" class="panel-img">
          <h1>Inclusão de Veículos</h1>
          <p>Em poucos cliques seu veículo  estará cadastrado!</p>
        </section>
        <section class="form-section">
          <form class="form-container">
            <div class="form-group">
              <label for="exampleFormControlSelect1">Placa:</label>
              <input id="input-placa" class="form-control mr-sm-2" type="text" placeholder="Ex.: ABC-1B34" aria-label="Exemplo: ABC-1B34">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Renavam:</label>
              <input class="form-control mr-sm-2" type="number" placeholder="Ex.: 456454654" aria-label="Exemplo: 456454654">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Marca:</label>
              <input class="form-control mr-sm-2" type="text" placeholder="Ex.: Mercedes" aria-label="Exemplo: Mercedes">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Modelo:</label>
              <input class="form-control mr-sm-2" type="text" placeholder="Ex.: Atego 24/290" aria-label="Exemplo: Atego 24/290">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Ano:</label>
              <input id="input-ano" class="form-control mr-sm-2" type="text" placeholder="Ex.: 15/15" aria-label="Exemplo: 2015/2015">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Capacidade (balança):</label>
              <input class="form-control mr-sm-2" type="text" placeholder="Ex.: 12 ton" aria-label="Exemplo: 12 toneladas">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Capacidade (volume):</label>
              <input class="form-control mr-sm-2" type="text" placeholder="Ex.: 26m³" aria-label="Exemplo: 26m³">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Quilometragem atual:</label>
              <input class="form-control mr-sm-2" type="number" placeholder="Ex.: 10000" aria-label="Exemplo: 10000">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Quilometragem última troca de óleo:</label>
              <input class="form-control mr-sm-2" type="number" placeholder="Ex.: 9000" aria-label="Exemplo: 9000">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Reboque Julieta:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <option>0</option>
                <option>1</option>
                <option>2</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Resíduo perigoso:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <option>sim</option>
                <option>não</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Autorização ZMRV:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <option>sim</option>
                <option>não</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Tacógrafo digital:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <option>sim</option>
                <option>não</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Estado dos pneus:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <option>péssimo</option>
                <option>ruim</option>
                <option>regular</option>
                <option>bom</option>
                <option>ótimo</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Equipamento:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <c:forEach items="${listaEquipamentos }" var="equipamento">
                  <option>${equipamento}</option>
                </c:forEach>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Motorista titular:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <c:forEach items="${listaMotoristas }" var="motorista">
                  <option>${motorista.nome }</option>
                </c:forEach>
              </select>
            </div>
          </form>
          <div class="form-buttons">
            <button type="button" class="btn btn-secondary" onclick="backToHome()">Cancelar</button>
            <button type="button" class="btn btn-success" onclick="">Cadastrar</button>
          </div>
        </section>
      </main>

      
      <script src="../../../resources/js/navbar-load.js"></script>
      <script src="../../../resources/js/veiculos/incluirVeiculos.js"></script>
    </body>

    </html>