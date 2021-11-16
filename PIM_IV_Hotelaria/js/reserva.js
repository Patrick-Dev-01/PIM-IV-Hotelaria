function adicionarOpcoes(quarto) {
    const descricaoQuarto = document.getElementById("descricao");

    function removerOpcoesAnteriores() {
        for (i in descricaoQuarto) {
            descricaoQuarto.remove(i);
        }
    }

    if (quarto === "solteiro") {
        removerOpcoesAnteriores();

        descricaoQuarto.appendChild(new Option('1 Cama de Solteiro', ''));
        descricaoQuarto.appendChild(new Option('2 Camas de Solteiro', ''));
        descricaoQuarto.appendChild(new Option('3 Camas de Solteiro', ''));
    }

    if (quarto === "casal") {
        removerOpcoesAnteriores();

        descricaoQuarto.appendChild(new Option('1 Cama de Casal', ''));
        descricaoQuarto.appendChild(new Option('2 Camas de Casal', ''));
    }

    if (quarto === "casal_filhos") {
        removerOpcoesAnteriores();

        descricaoQuarto.appendChild(new Option('1 Cama de Casal e 1 Cama de Solteiro', ''));
        descricaoQuarto.appendChild(new Option('1 Cama de Casal e 2 Camas de Solteiro', ''));
    }

    if (quarto === "") {
        removerOpcoesAnteriores();
        descricaoQuarto.appendChild(new Option('Descricao', ''));
    }
}

function Validar(campo) {
    const mensagemErro = document.getElementById(`msg-erro-${campo}`);
    const valor = document.getElementById(`${campo}`).value
        .replaceAll(".", "")
        .replaceAll("-", "")
        .replaceAll("(", "").replaceAll(")", "")
        .replaceAll("/", "");

    if (campo === 'cpf') {
        if (valor.length !== 11) {
            mensagemErro.innerHTML = "CPF Incorreto";
        }

        else {
            mensagemErro.innerHTML = "";
        }
    }

    if (campo === 'nome') {
        if (valor === "") {
            mensagemErro.innerHTML = "Informe seu Nome";
        }

        else {
            mensagemErro.innerHTML = "";
        }
    }

    if (campo === 'sobrenome') {
        if (valor === "") {
            mensagemErro.innerHTML = "Informe seu sobrenome";
        }

        else {
            mensagemErro.innerHTML = "";
        }
    }

    if (campo === 'celular') {
        if (valor.length !== 11) {
            mensagemErro.innerHTML = "Número inválido";
        }

        else {
            mensagemErro.innerHTML = "";
        }
    }
}