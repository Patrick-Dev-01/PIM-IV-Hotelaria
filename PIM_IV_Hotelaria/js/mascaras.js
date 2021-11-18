function mascara(campo, value) {
    let campoValor = document.getElementById(campo);

    if (campo === 'name_cpf') {
        campoValor.value = value
            .replace(/\D/g, "")
            .replace(/(\d{3})(\d)/, "$1.$2")
            .replace(/(\d{3})(\d)/, "$1.$2")
            .replace(/(\d{3})(\d{1,2})/, "$1-$2")
            .replace(/(-\d{2})\d+?$/, "$1");
    }

    if (campo === 'name_celular') {
        campoValor.value = value
            .replace(/\D/g, "")
            .replace(/(\d{2})(\d)/, "($1) $2")
            .replace(/(\d{5})(\d{4})(\d)/, "$1-$2");
    }
}