<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="../../../resources/css/clientes/clientesIncluir.css">
      <link rel="stylesheet" href="../../../resources/css/modal.css">
      <link rel="stylesheet" href="../../../resources/css/pattern.css">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="  crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
      <link rel="shortcut icon" href="../../../resources/img/logo-navbar.png" type="image/x-icon">
      <title>Incluir Fornecedores | TechLog</title>
    </head>

    <body id="body-incluir">
      <jsp:include page="../../../resources/tags/header.jsp" />

      <main class="main-content">
        <section class="panel-container">
          <img src="../../resources/img/clientes/clientes.png" alt="" class="panel-img">
          <h1 id="title-page">Inclusão de Fornecedores ou Compradores</h1>
          <p>Em poucos cliques o fornecedor ou comprador estará cadastrado!</p>
        </section>
        <section class="form-section">
          <form class="form-container">
            <div class="form-group">
              <label for="exampleFormControlSelect1">Razão social:</label>
              <input id="input-razao" class="form-control mr-sm-2" type="text" placeholder="Ex.: Empresa A" aria-label="Exemplo: Empresa A">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">CNPJ:</label>
              <input id="input-cnpj" class="form-control mr-sm-2" type="text" placeholder="Ex.: 12.123.123/0001-12" aria-label="Exemplo: 12.123.123/0001-12">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">CEP:</label>
              <input onkeyup="buscaCep()" id="input-cep" class="form-control mr-sm-2" type="text" placeholder="Ex.: 00000-000" aria-label="Exemplo: 00000-000">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Logradouro:</label>
              <input id="input-logradouro" class="form-control mr-sm-2" type="text" placeholder="Ex.: Av. Paulista" aria-label="Exemplo: Avenida Paulista">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Numero:</label>
              <input id="input-numero" class="form-control mr-sm-2" type="number" placeholder="Ex.: 10" aria-label="Exemplo: 12.123.123/0001-12">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Complemento:</label>
              <input id="input-complemento" class="form-control mr-sm-2" type="text" placeholder="Ex.: Apto 1" aria-label="Exemplo: apartamento 1">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Bairro:</label>
              <input id="input-bairro" class="form-control mr-sm-2" type="text" placeholder="Ex.: Centro" aria-label="Exemplo: Centro">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">UF:</label>
              <select class="form-control" id="select-uf">
                <option id="sigla-uf-disabled" value=""selected disabled>-selecione-</option>
                <c:forEach items="${listaEstados}" var="estado">
                  <option class="sigla-uf" value="${estado.sigla}">${estado.sigla}</option>
                </c:forEach>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Cidade:</label>
              <input id="input-cidade" class="form-control mr-sm-2" type="text" placeholder="Ex.: São Paulo" aria-label="Exemplo: São Paulo">
            </div>
            <div></div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Restrição de horário:</label>
              <select class="form-control" id="select-restriction">
                <option value=""selected disabled>-selecione-</option>
                <option value="nenhuma">nenhuma</option>
                <option value="manhã">manhã</option>
                <option value="tarde">tarde</option>
                <option value="noturno">noturno</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Volume do veículo:</label>
              <select class="form-control" id="select-volume">
                <option value=""selected disabled>-selecione-</option>
                <option value="25%">25%</option>
                <option value="50%">50%</option>
                <option value="75%">75%</option>
                <option value="100%">100%</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Ajudante:</label>
              <select class="form-control" id="select-ajudante">
                <option value=""selected disabled>-selecione-</option>
                <option value="true">sim</option>
                <option value="false">não</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Equipamento:</label>
              <select class="form-control" id="select-equipment">
                <option value=""selected disabled>-selecione-</option>
                <c:forEach items="${listaEquipamentos }" var="equipamento">
                  <option value="${equipamento}">${equipamento}</option>
                </c:forEach>
              </select>
            </div>
            <div class="form-check">
              <label for="exampleFormControlSelect1">Materiais:</label>
              <div class="form-check-content">
                <c:forEach items="${listaMateriais}" var="material">
                  <div>
                    <input class="form-check-input checkbox-material" type="checkbox" value="" >
                    <label class="form-check-label">
                      ${material.descricao}
                    </label>
                  </div>
                </c:forEach>
                <div>
                  <input class="form-check-input checkbox-material" type="checkbox" value="" id="checkbox-outro" onclick="outroMaterial()">
                  <label class="form-check-label" for="checkbox-outro">
                    Outro
                  </label>
                </div>
                <div id="desc-outro-material">
                  <input id="desc-outro-material-content" class="form-control mr-sm-2" type="text" placeholder="Descreva..." aria-label="Descreva">
                </div>
              </div>
            </div>
          </form>
          <div class="form-buttons">
            <button type="button" class="btn btn-secondary" onclick="">Cancelar</button>
            <button type="button" class="btn btn-success" onclick="validateData()">Cadastrar</button>
          </div>
        </section>
      </main>

      <div id="myModal" class="modal">
        <div class="modal-content">
          <span class="close">&times;</span>
          <p>Cliente incluído com sucesso!!!</p>
          <p>Deseja continuar incluindo Clientes?</p>
          <div class="button-modal">
            <button type="button" class="btn btn-secondary" onclick="backToHome()">Cancelar</button>
            <button type="button" class="btn btn-success" onclick="closeModal()">Continuar</button>
          </div>
        </div>
      </div>
      
      <script src="../../../resources/js/navbar-load.js"></script>
      <script src="../../../resources/js/modal.js"></script>
      <script src="../../../resources/js/clientes/incluirClientes.js"></script>
    </body>

    </html>