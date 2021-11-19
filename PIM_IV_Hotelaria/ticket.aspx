<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ticket.aspx.cs" Inherits="PIM_IV_Hotelaria.ticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="./css/ticket.css" />
    <link rel="stylesheet" type="text/css" href="./css/styles.css" />
    <script src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
    <script src="./js/ticket.js"></script>
    <title>Hotelaria Imperador - Ticket</title>
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
                <h1>Ticket da Reserva</h1>
            </div>

            <section >
                <h2>Agradecemos a sua reserva em nosso hotel</h2>
                <h3>Aqui está seu ticket da reserva, contendo todos os seus dados e descrição do seu quarto</h3>

                <div class="ticket" id="ticket">
                    <div class="logo">
                        <img src="./img/logo-header.svg" alt="Hotel Imperador" />
                        <h1>Dados da Reserva</h1>
                        <div></div>
                    </div>

                    <div class="reserva">
                        <span>
                            <strong>Cliente</strong>
                            <p id="nome" runat="server"></p>
                        </span>

                        <span>
                            <strong>Telefone</strong>
                            <p id="celular" runat="server"></p>
                        </span>

                        <span>
                            <strong>E-mail</strong>
                            <p id="email" runat="server"></p>
                        </span>

                        <span>
                            <strong>Quarto</strong>
                            <p id="quarto" runat="server"></p>
                        </span>

                        <span>
                            <strong>Andar</strong>
                            <p id="andar" runat="server"></p>
                        </span>

                        <span>
                            <strong>N° Quarto</strong>
                            <p id="numero_quarto" runat="server"></p>
                        </span>

                        <span>
                            <strong>Check In</strong>
                            <p id="checkIn" runat="server"></p>
                        </span>

                        <span>
                            <strong>Check Out</strong>
                            <p id="checkOut" runat="server"></p>
                        </span>
                    </div>
                </div>

                <div class="avisos">
                    <span>
                        <strong>Seu número de protocolo:</strong><p runat="server" id="protocolo"></p>
                    </span>
                    <span>
                        <strong>Valor da diária:</strong><p runat="server" id="diaria" ></p>
                    </span>
                    <span>
                        <strong>Importante! </strong><br/>
                        <p>
                            Anote ou guarde seu número de protocolo, se você desejar cancelar a sua reserva, você precisará fornece - lo juntamente com seu CPF.
                            Caso não lembre, ligue para nossa unidade no número (00) 0000-0000.
                        </p>
                    </span>
                </div>

                <button type="button" id="download" onclick="gerarPDF();">Finalizar</button>
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
