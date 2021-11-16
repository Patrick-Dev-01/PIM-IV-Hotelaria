function gerarPDF() {
    const dia = new Date().getDate();
    const mes = new Date().getMonth() + 1;
    const ano = new Date().getFullYear();

    const conteudo = document.getElementById("ticket");

    const pdf = {
        margin: 25,
        filename: `${ano}-${mes}-${dia}_reserva.pdf`,
        image: { type: 'png', quality: 0.98 },
        html2canvas: { scale: 3 },
    }

    html2pdf().set(pdf).from(conteudo).save();
}