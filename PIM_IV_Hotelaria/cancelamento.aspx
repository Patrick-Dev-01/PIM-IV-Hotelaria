<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cancelamento.aspx.cs" Inherits="PIM_IV_Hotelaria.cancelamento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="./css/cancelamento.css" />
    <link rel="stylesheet" type="text/css" href="./css/styles.css" />
    <title>Hotelaria Imperador - Cancelamento</title>
    <script src="./js/mascaras.js"></script>
</head>
<body>
    <div class="container">
        <header>
            <a href="index.aspx"><img src="./img/logo.svg" alt="Hotelaria Imperador" /></a>
            <ul>
                <li><a href="index.aspx">Página Inicial</a></li>
                <li><a href="#">Minha Reserva</a></li>
                <li><a href="cancelamento.aspx">Cancelamento</a></li>
            </ul>
        </header>

        <main>
            <div class="titulo">
                <h1>Cancelamento de Reserva</h1>
            </div>

            <section>
                <form id="form1" runat="server" method="post">
                    <img src="./img/logo-footer.svg" alt="Hotel Imperador" />

                    <label>
                        CPF
                        <span>
                            <input type="text" name="cpf" id="cpf" placeholder="000.000.000-00" value="" oninput="mascara(`cpf`, `${event.target.value}`);"/>
                            <p id="msg-erro-cpf"></p>
                        </span>
                    </label>

                    <label>
                        Protocolo
                        <span>
                            <input type="number" name="protocolo" id="protocolo" />
                            <p id="msg-erro-nome"></p>
                        </span>
                    </label>

                    <a href="cancelamento.html"><button type="button" onclick="Enviar();">Confirmar</button></a>
                </form>

                <p>A ação é irreversível, tenha certeza de sua escolha. Qualquer dúvida ligue na nossa unidade no número (00) 0000 - 0000 ou nos contate por E-mail faleconosco@HotelImperador.com.</p>
            </section>
        </main>

    <footer>
        <section>
            <div class="historia">
                <h2>Nossa História</h2>

                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Molestias veritatis doloribus under. </p>
            </div>

            <div class="contato">
                <h2>Contato</h2>

                <span>
                    <h3>Telefone</h3>
                    <p>- (00) 0000-0000</p>
                </span>

                <span>
                    <h3>E-mail</h3>
                    <p>- faleconosco@HotelImperador.com</p>
                </span>
            </div>

            <div class="redes-sociais">
                <h2>Redes Sociais</h2>

                <div class="redes">
                    <a href=""><img src="./img/instragram.svg" /></a>
                    <a href=""><img src="./img/facebook.svg" /></a>
                    <a href=""><img src="./img/twitter.svg" /></a>
                </div>
            </div>
        </section>

        <div class="direitos">
            <h4>Hotelaria Imperador 2021 - Alguns Direitos Reservados</h4>
        </div>
    </footer>
    </div>
</body>
</html>
