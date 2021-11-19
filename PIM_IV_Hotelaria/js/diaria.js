function diaria(tipoQuarto) {
    const campoDiaria = document.getElementById("name_diaria");

    switch (tipoQuarto) {
        case "1":
            campoDiaria.placeholder = "R$ 100,00";
            break;

        case "2":
            campoDiaria.placeholder = "R$ 150,00";
            break;

        case "3":
            campoDiaria.placeholder = "R$ 200,00";
            break;

        case "4":
            campoDiaria.placeholder = "R$ 250,00";
            break;

        case "5":
            campoDiaria.placeholder = "R$ 350,00";
            break;

        case "6":
            campoDiaria.placeholder = "R$ 400,00";
            break;

        case "7":
            campoDiaria.placeholder = "R$ 520,00";
            break;
    }

    return diaria;
}