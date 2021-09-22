<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="../../../resources/css/veiculos/veiculosIncluir.css">
      <link rel="stylesheet" href="../../../resources/css/modal.css">
      <link rel="stylesheet" href="../../../resources/css/pattern.css">
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
              <input id="input-placa" class="input-vehicle form-control mr-sm-2" type="text" placeholder="Ex.: ABC-1B34" aria-label="Exemplo: ABC-1B34">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Renavam:</label>
              <input id="input-renavam" class="input-vehicle form-control mr-sm-2" type="number" placeholder="Ex.: 456454654" aria-label="Exemplo: 456454654">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Marca:</label>
              <input id="input-marca" class="input-vehicle form-control mr-sm-2" type="text" placeholder="Ex.: Mercedes" aria-label="Exemplo: Mercedes">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Modelo:</label>
              <input id="input-modelo" class="input-vehicle form-control mr-sm-2" type="text" placeholder="Ex.: Atego 24/290" aria-label="Exemplo: Atego 24/290">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Ano:</label>
              <input id="input-ano" class="input-vehicle form-control mr-sm-2" type="text" placeholder="Ex.: 15/15" aria-label="Exemplo: 2015/2015">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Capacidade (balança):</label>
              <input id="input-balanca" class="input-vehicle form-control mr-sm-2" type="text" placeholder="Ex.: 12 ton" aria-label="Exemplo: 12 toneladas">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Capacidade (volume):</label>
              <input id="input-volume" class="input-vehicle form-control mr-sm-2" type="text" placeholder="Ex.: 26m³" aria-label="Exemplo: 26m³">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Quilometragem atual:</label>
              <input id="input-km" class="input-vehicle form-control mr-sm-2" type="number" placeholder="Ex.: 10000" aria-label="Exemplo: 10000">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Quilometragem última troca de óleo:</label>
              <input id="input-ultima" class="input-vehicle form-control mr-sm-2" type="number" placeholder="Ex.: 9000" aria-label="Exemplo: 9000">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Reboque Julieta:</label>
              <select class="select-vehicle form-control" id="select-julieta">
                <option class="select-disabled" value=""selected disabled>-selecione-</option>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Resíduo perigoso:</label>
              <select class="select-vehicle form-control" id="select-perigoso">
                <option class="select-disabled" value=""selected disabled>-selecione-</option>
                <option value="true">sim</option>
                <option value="false">não</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Autorização ZMRV:</label>
              <select class="select-vehicle form-control" id="select-zmrv">
                <option class="select-disabled" value=""selected disabled>-selecione-</option>
                <option value="true">sim</option>
                <option value="false">não</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Tacógrafo digital:</label>
              <select class="select-vehicle form-control" id="select-tacografo">
                <option class="select-disabled" value=""selected disabled>-selecione-</option>
                <option value="true">sim</option>
                <option value="false">não</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Estado dos pneus:</label>
              <select class="select-vehicle form-control" id="select-pneus">
                <option class="select-disabled" value=""selected disabled>-selecione-</option>
                <option value="pessimo">péssimo</option>
                <option value="ruim">ruim</option>
                <option value="regular">regular</option>
                <option value="bom">bom</option>
                <option value="otimo">ótimo</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Equipamento:</label>
              <select class="select-vehicle form-control" id="select-equipamento">
                <option class="select-disabled" value=""selected disabled>-selecione-</option>
                <c:forEach items="${listaEquipamentos }" var="equipamento">
                  <option value="${equipamento}">${equipamento}</option>
                </c:forEach>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Motorista titular:</label>
              <select class="select-vehicle form-control" id="select-motorista">
                <option class="select-disabled" value=""selected disabled>-selecione-</option>
                <c:forEach items="${listaMotoristas }" var="motorista">
                  <option value="${motorista.nome }">${motorista.nome }</option>
                </c:forEach>
              </select>
            </div>
          </form>
          <div class="form-buttons">
            <button type="button" class="btn btn-secondary" onclick="backToHome()">Cancelar</button>
            <button type="button" class="btn btn-success" onclick="validateData()">Cadastrar</button>
          </div>
        </section>
      </main>

      <div id="myModal" class="modal">
        <div class="modal-content">
          <span class="close">&times;</span>
          <p>Veículo incluído com sucesso!!!</p>
          <p>Deseja continuar incluindo veículos?</p>
          <div class="button-modal">
            <button type="button" class="btn btn-secondary" onclick="backToHome()">Cancelar</button>
            <button type="button" class="btn btn-success" onclick="closeModal()">Continuar</button>
          </div>
        </div>
      </div>
      
      <script src="../../../resources/js/navbar-load.js"></script>
      <script src="../../../resources/js/modal.js"></script>
      <script src="../../../resources/js/veiculos/incluirVeiculos.js"></script>
    </body>

    </html>