let isAberto = false;

function showMenu() {
    const burguerMenu = document.getElementById("menu");
    

    if (!isAberto) {
        burguerMenu.style.display = 'block';
        isAberto = true;
    }

    else {
        burguerMenu.style.display = 'none';
        isAberto = false;
    }
}