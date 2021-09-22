<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../../../resources/css/colaboradores/colaboradoresIncluir.css">
	<link rel="stylesheet" href="../../../resources/css/modal.css">
      <link rel="stylesheet" href="../../../resources/css/pattern.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
	<link rel="shortcut icon" href="../../../resources/img/logo-navbar.png" type="image/x-icon">
	<title>Incluir Veículos | TechLog</title>
</head>

<body id="body-incluir">
	<jsp:include page="../../../resources/tags/header.jsp" />

	<main class="main-content">
		<section class="panel-container">
			<img src="../../resources/img/colaboradores/colaborador.svg" alt="" class="panel-img">
			<h1>Inclusão de colaborador</h1>
			<p>Em poucos cliques seu colaborador estará cadastrado!</p>
		</section>
		<section class="form-section">
			<form class="form-container">
				<div class="form-group">
					<label for="input-nome">Nome:</label> 
					<input id="input-nome" class="form-control mr-sm-2" type="text" placeholder="Ex.: Carlos" aria-label="Exemplo: Carlos">
				</div>
				<div class="form-group">
					<label for="input-rg">RG:</label> 
					<input id="input-rg" onkeypress="$(this).mask('00.000.000-0')" class="form-control mr-sm-2" type="text" placeholder="Ex.: Insira número do RG" aria-label="Exemplo: Insira número do RG">
				</div>
				<div class="form-group">
					<label for="input-cpf">CPF:</label> 
					<input id="input-cpf" onkeypress="$(this).mask('000.000.000-00')"class="form-control mr-sm-2" type="text" placeholder="Ex.: Insira número do CPF" aria-label="Exemplo: Insira número do CPF">
				</div>
				<div class="form-group">
					<label for="input-pis">PIS:</label> 
					<input id="input-pis" onkeypress="$(this).mask('000.00000.00-0')" class="form-control mr-sm-2" type="text" placeholder="Ex.: Insira número do PIS" aria-label="Exemplo: Insira número do PIS">
				</div>
				<div class="form-group">
					<label for="input-CPTS">CPTS:</label> 
					<input id="input-cpts" class="form-control mr-sm-2" type="text" placeholder="Ex.: Insira número do CPTS" aria-label="Exemplo: Insira número do CPTS">
				</div>
				<div class="form-group">
					<label for="exameMedico">Exame médico:</label> 
					<input id="exameMedico" class="form-control mr-sm-2" type="date" placeholder="Ex.: " aria-label="Exemplo: ">
				</div>
				<div class="form-group">
					<label for="exampleFormControlSelect1">Perfil:</label>
					 <select class="form-control" id="perfil" onblur="profileSelected(this);">
						<option value="">-selecione-</option>
						<option value="Ajudante">Ajudante</option>
						<option value="Motorista">Motorista</option>
					</select>
				</div>
				<div class="form-group">
					<div class="radios">
						<div>
							<label for="sim" style="margin-right: 1rem;">CNH:</label> 
							<input type="radio" onchange="changeCNHRadio(this);" id="sim" name="drone" value="SIM">
							<label for="sim">SIM</label>
						</div>
						<div>
							<input type="radio" onchange="changeCNHRadio(this);" id="nao" name="drone" value="NAO">
							<label for="nao">NÃO</label>
						</div>
					</div>
					<div>
						<input id="input-cnh" disabled class="form-control mr-sm-2" type="text" placeholder="Ex.: número da CNH" aria-label="Exemplo: número da CNH">
					</div>
				</div>
				<div class="form-group">
					<label for="input-letra-cnh">Letra da CNH:</label> 
					<select id="input-letra-cnh" disabled class="form-control mr-sm-2">
						<option value="">-selecione-</option>
						<option value="Ajudante">A</option>
						<option value="Motorista">B</option>
						<option value="Motorista">B + MOPP</option>
						<option value="Motorista">AB</option>
						<option value="Motorista">AB + MOPP</option>
						<option value="Motorista">D</option>
						<option value="Motorista">D + MOPP</option>
						<option value="Motorista">AD</option>
						<option value="Motorista">AD + MOPP</option>
						<option value="Motorista">E</option>
						<option value="Motorista">E + MOPP</option>
						<option value="Motorista">AE</option>
						<option value="Motorista">AE + MOPP</option>
					</select>
				</div>
				<div class="form-group"></div>
				<div class="form-check">
					<label for="exampleFormControlSelect1">Treinamentos:</label>
					<div class="form-check-content">
						<c:forEach items="${listaTreinamentos}" var="treinamento">
							<div>
								<input class="form-check-input checkbox-material" type="checkbox" value="${treinamento}" onclick="verifyOther(this);">
								<label class="form-check-label" for="checkbox-papelao">${treinamento}</label>
							</div>
						</c:forEach>
					</div>
					<div id="desc-outro-material">
						<input hidden id="otherMaterial" class="form-control mr-sm-2" type="text" placeholder="Descreva..." aria-label="Descreva">
					</div>
				</div>
			</form>
			<div class="form-buttons">
				<button type="button" class="btn btn-secondary" onclick="backToHome()">Cancelar</button>
				<button type="button" class="btn btn-success" onclick="validateData();">Cadastrar</button>
			</div>
		</section>
	</main>
	<form id="formHidden" action="/colaboradores/incluir/cadastro" method="POST" hidden>
		<input id="colaboradorRequest" type="text" name="colaboradorRequest" value="" hidden>
	</form>

	<div id="myModal" class="modal">
        <div class="modal-content">
          <span class="close">&times;</span>
          <p>Colaborador incluído com sucesso!!!</p>
          <p>Deseja continuar incluindo Colaboradores?</p>
          <div class="button-modal">
            <button type="button" class="btn btn-secondary" onclick="backToHome()">Cancelar</button>
            <button type="button" class="btn btn-success" onclick="closeModal()">Continuar</button>
          </div>
        </div>
    </div>
	<script src="../../../resources/js/navbar-load.js"></script>
	<script src="../../../resources/js/modal.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
	<script src="../../../resources/js/colaboradores/incluirColaborador.js"></script>
</body>
</html>