<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="../../../resources/css/clientes/clientesAlterar.css">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="  crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
      <link rel="shortcut icon" href="../../../resources/img/logo-navbar.png" type="image/x-icon">
      <title>Alterar Clientes | TechLog</title>
    </head>

    <body id="body-incluir">
      <jsp:include page="../../../resources/tags/header.jsp" />

      <main class="main-content">
        <section class="panel-container">
          <img src="../../resources/img/clientes/clientes.png" alt="" class="panel-img">
          <h1 id="title-page">Alteração de Fornecedores ou Compradores</h1>
        </section>
        <section class="form-section">
          <div class="form-group">
            <label for="exampleFormControlSelect1">Selecione o cliente:</label>
            <select class="form-control" id="exampleFormControlSelect1">
              <option value=""selected disabled>-selecione-</option>
              <option>nenhuma</option>
              <option>manhã</option>
              <option>tarde</option>
              <option>noturno</option>
            </select>
          </div>
          <form class="form-container">
            <div class="form-group">
              <label for="exampleFormControlSelect1">Razão social:</label>
              <input class="form-control mr-sm-2" type="text" placeholder="Ex.: Empresa A" aria-label="Exemplo: Empresa A">
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
              <input class="form-control mr-sm-2" type="text" placeholder="Ex.: Av. Paulista" aria-label="Exemplo: Avenida Paulista">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Numero:</label>
              <input class="form-control mr-sm-2" type="number" placeholder="Ex.: 10" aria-label="Exemplo: 12.123.123/0001-12">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Complemento:</label>
              <input class="form-control mr-sm-2" type="text" placeholder="Ex.: Apto 1" aria-label="Exemplo: apartamento 1">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Bairro:</label>
              <input class="form-control mr-sm-2" type="text" placeholder="Ex.: Centro" aria-label="Exemplo: Centro">
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">UF:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <option>SP</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Cidade:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <option>São Paulo</option>
              </select>
            </div>
            <div></div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Restrição de horário:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <option>nenhuma</option>
                <option>manhã</option>
                <option>tarde</option>
                <option>noturno</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Volume do veículo:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <option>25%</option>
                <option>50%</option>
                <option>75%</option>
                <option>100%</option>
              </select>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Ajudante:</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value=""selected disabled>-selecione-</option>
                <option>sim</option>
                <option>não</option>
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
            <div class="form-check">
              <label for="exampleFormControlSelect1">Materiais:</label>
              <div class="form-check-content">
                <div>
                  <input class="form-check-input checkbox-material" type="checkbox" value="" id="checkbox-papelao" >
                  <label class="form-check-label" for="checkbox-papelao">
                    Papelão
                  </label>
                </div>
                <div>
                  <input class="form-check-input checkbox-material" type="checkbox" value="" id="checkbox-plastico" >
                  <label class="form-check-label" for="checkbox-plastico">
                    Plástico
                  </label>
                </div>
                <div>
                  <input class="form-check-input checkbox-material" type="checkbox" value="" id="checkbox-metal-misto" >
                  <label class="form-check-label" for="checkbox-metal-misto">
                    Metal misto
                  </label>
                </div>
                <div>
                  <input class="form-check-input checkbox-material" type="checkbox" value="" id="checkbox-metal-ferro" >
                  <label class="form-check-label" for="checkbox-metal-ferro">
                    Metal ferroso
                  </label>
                </div>
                <div>
                  <input class="form-check-input checkbox-material" type="checkbox" value="" id="checkbox-metal-n" >
                  <label class="form-check-label" for="checkbox-metal-n">
                    Metal não ferroso
                  </label>
                </div>
                <div>
                  <input class="form-check-input checkbox-material" type="checkbox" value="" id="checkbox-vidro" >
                  <label class="form-check-label" for="checkbox-vidro">
                    Vidro
                  </label>
                </div>
                <div>
                  <input class="form-check-input checkbox-material" type="checkbox" value="" id="checkbox-madeira" >
                  <label class="form-check-label" for="checkbox-madeira">
                    Madeira
                  </label>
                </div>
                <div>
                  <input class="form-check-input checkbox-material" type="checkbox" value="" id="checkbox-organico" >
                  <label class="form-check-label" for="checkbox-organico">
                    Orgânico
                  </label>
                </div>
                <div>
                  <input class="form-check-input checkbox-material" type="checkbox" value="" id="checkbox-perigoso" >
                  <label class="form-check-label" for="checkbox-perigoso">
                    Perigoso
                  </label>
                </div>
                <div>
                  <input class="form-check-input checkbox-material" type="checkbox" value="" id="checkbox-hospitalar" >
                  <label class="form-check-label" for="checkbox-hospitalar">
                    Hospitalar
                  </label>
                </div>
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
            <button type="button" class="btn btn-success" onclick="">Cadastrar</button>
          </div>
        </section>
      </main>

      
      <script src="../../../resources/js/navbar-load.js"></script>
      <script src="../../../resources/js/clientes/incluirClientes.js"></script>
    </body>

    </html>