function adicionarOpcoes(quarto) {
    const campoDescricao = document.getElementById("descricao");

    if (quarto === "solteiro") {
        campoDescricao.options = new Option('1 Cama de Solteiro', '1 cama de solteiro');
    }

    alert(quarto)
}

function Enviar() {
    /*const mensagemErro = document.getElementById(`msg-erro-${campo}`);

    const cpf = document.getElementById(`cpf`).value;
    const nome = document.getElementById(`nome`).value;
    const sobrenome = document.getElementById(`sobrenome`).value;
    const nome = document.getElementById(`nome`).value;

    if (valor.length < 10) {
        mensagemErro.innerHTML = "CPF Incorreto";
    }

    else {
        mensagemErro.innerHTML = "";
    }*/

    alert("clicou");
}