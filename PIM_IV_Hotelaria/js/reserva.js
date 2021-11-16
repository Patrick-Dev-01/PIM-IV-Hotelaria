function Validar(campo, option) {
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

    if (campo === 'email') {
        if (valor === "") {
            mensagemErro.innerHTML = "Informe seu E-mail";
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

    if (campo === "pagamento") {
        if (option === "") {
            mensagemErro.innerHTML = "Escolha uma forma de Pagamento";
        }

        else {
            mensagemErro.innerHTML = "";
        }
    }
}

function adicionarOpcoes(quarto) {
    const descricaoQuarto = document.getElementById("descricao");
    const mensagemErro = document.getElementById(`msg-erro-quarto`);

    function removerOpcoesAnteriores() {
        for (i in descricaoQuarto) {
            descricaoQuarto.remove(i);
        }
    }

    if (quarto === "solteiro") {
        removerOpcoesAnteriores();
        mensagemErro.innerHTML = "";

        descricaoQuarto.appendChild(new Option('1 Cama de Solteiro', ''));
        descricaoQuarto.appendChild(new Option('2 Camas de Solteiro', ''));
        descricaoQuarto.appendChild(new Option('3 Camas de Solteiro', ''));
    }

    if (quarto === "casal") {
        removerOpcoesAnteriores();
        mensagemErro.innerHTML = "";

        descricaoQuarto.appendChild(new Option('1 Cama de Casal', ''));
        descricaoQuarto.appendChild(new Option('2 Camas de Casal', ''));
    }

    if (quarto === "casal_filhos") {
        removerOpcoesAnteriores();
        mensagemErro.innerHTML = "";

        descricaoQuarto.appendChild(new Option('1 Cama de Casal e 1 Cama de Solteiro', ''));
        descricaoQuarto.appendChild(new Option('1 Cama de Casal e 2 Camas de Solteiro', ''));
    }

    if (quarto === "") {
        removerOpcoesAnteriores();
        mensagemErro.innerHTML = "Escolha um tipo de Quarto";
        descricaoQuarto.appendChild(new Option('Descricao', ''));
    }
}
