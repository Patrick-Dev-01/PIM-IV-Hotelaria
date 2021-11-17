function adicionarOpcoes(quarto) {
    const descricaoQuarto = document.getElementById("descricao");
    const mensagemErro = document.getElementById(`msg_erro_quarto`);

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
