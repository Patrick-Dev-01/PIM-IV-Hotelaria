<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ticket.aspx.cs" Inherits="PIM_IV_Hotelaria.ticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="./css/ticket.css" />
    <link rel="stylesheet" type="text/css" href="./css/styles.css" />
    <title>Hotelaria Imperador - Ticket</title>
</head>
<body>
     <div class="container">
        <header>
            <img src="./img/logo-header.svg" alt="Hotelaria Imperador" />
            <h2>Hotelaria Imperador</h2>
        </header>

        <main>
            <div class="titulo">
                <h1>Ticket da Reserva</h1>
            </div>

            <section>
                <h2>Agradecemos a sua reserva em nosso hotel</h2>
                <h3>Aqui está seu ticket da reserva, contendo todos os seus dados e descrição do seu quarto</h3>

                <div class="ticket">
                    <div class="logo">
                        <img src="./img/logo-header.svg" alt="Hotel Imperador" />
                        <h1>Dados da Reserva</h1>
                        <div></div>
                    </div>

                    <div class="reserva">
                        <span>
                            <strong>Cliente</strong>
                            <p>Patrick Rodrigues</p>
                        </span>

                        <span>
                            <strong>Telefone</strong>
                            <p>(11) 0000-0000</p>
                        </span>

                        <span>
                            <strong>E-mail</strong>
                            <p>patrick@teste.com</p>
                        </span>

                        <span>
                            <strong>Quarto</strong>
                            <p>Solteiro</p>
                        </span>

                        <span>
                            <strong>Descrição do Quarto</strong>
                            <p>1 Cama de casal e 3 camas de solteiro</p>
                        </span><br />

                        <span>
                            <strong>Andar</strong>
                            <p>2</p>
                        </span>

                        <span>
                            <strong>N° Quarto</strong>
                            <p>20</p>
                        </span>

                        <span>
                            <strong>Check In</strong>
                            <p>00/00/0000</p>
                        </span>

                        <span>
                            <strong>Check Out</strong>
                            <p>00/00/0000</p>
                        </span>

                    </div>
                </div>

                <div class="avisos">
                    <span>
                        <strong>Seu número de protocolo:</strong><p> 1564889489450894</p>
                    </span>
                    <span>
                        <strong>Valor da diária:</strong><p> R$ 300,00</p>
                    </span>
                    <span>
                        <strong>Importante! </strong><br/>
                        <p>
                            Anote ou guarde seu número de protocolo, se você desejar cancelar a sua reserva, você precisará fornece - lo juntamente com seu CPF.
                            Caso não lembre, ligue para nossa unidade no número (00) 0000-0000.
                        </p>
                    </span>
                </div>

                <a href="index.aspx"><button type="button">Finalizar</button></a>
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
