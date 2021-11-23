<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PIM_IV_Hotelaria.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="./css/index.css" />
    <link rel="stylesheet" type="text/css" href="./css/styles.css" />
    <title>Hotelaria Imperador</title>
    <script src="./js/menu_mobile.js"></script>
</head>
<body>
    <div class="container">
        <header class="cabecalho">
           <a href="index.aspx"><img src="./img/logo.svg" alt="Hotelaria Imperador" /></a>
            <ul>
                <li><a href="index.aspx">Home</a></li>
                <li><a href="reservas.aspx">Reservar</a></li>
                <li><a href="cancelamento.aspx">Cancelamento</a></li>
            </ul>
        </header>

        <header class="cabecalho_mobile">
           <a href="index.aspx"><img src="./img/logo_mobile.svg" alt="Hotelaria Imperador" /></a>
            <div class="burger_menu">
                <img src="./img/burger_menu.svg" alt="Menu" onclick="showMenu();"/>
                <nav id="menu" onclick="showMenu();">
                    <strong>X</strong>
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <li><a href="reservas.aspx">Reservar</a></li>
                        <li><a href="cancelamento.aspx">Cancelamento</a></li>
                    </ul>
                </nav>
            </div>
        </header>

        <main>
            <div class="slogan">
                <div>
                    <h1>Hotel Imperador, o lugar mais confortável depois da sua casa</h1>
                    <a href="reservas.aspx"><button type="button">Reservar Agora</button></a>
                </div>
                
                <div>
                    <img src="img/hotel.png" alt="Hotel"/>
                </div>
            </div>

            <section class="descricao">
                <h1>Oferecemos reserva para todos os tipos civis</h1>
                <p>Quartos para solteiros, casais e casais com até 2 filhos</p>
            </section>

            <section>
                <div class="tipo-quarto">
                    <img src="./img/solteiro-icon.svg" alt="Solteiro" />
                    <h2>Solteiros</h2>

                    <div class="quartos">
                        <div class="quarto">
                            <img src="./img/quartos/solteiro_1.jpg" alt="" />
                            <p>Quarto solteiro Individual.</p>
                            <span>
                                <h3>1 Cama de solteiro</h3>
                                <p>Diária: <strong>R$ 100,00</strong></p>
                            </span>
                            <a href="reservas.aspx"> <button type="button">Reservar</button></a>
                        </div>
                        
                        <div class="quarto">
                            <img src="./img/quartos/solteiro_2.jpg" alt="" />
                            <p>Quarto para duas 2 pessoas.</p>
                            <span>
                                <h3>2 Camas de solteiro</h3>
                                <p>Diária: <strong>R$ 150,00</strong></p>
                            </span>
                             <a href="reservas.aspx"><button type="button">Reservar</button></a>
                        </div>

                        <div class="quarto">
                            <img src="./img/quartos/solteiro_3.jpg" alt="" />
                            <p>Quarto para duas 3 pessoas.</p>
                            <span>
                                <h3>3 Camas de solteiro</h3>
                                <p>Diária: <strong>R$ 200,00</strong></p>
                            </span>
                            <a href="reservas.aspx"><button type="button">Reservar</button></a>
                        </div>
                    </div>
                </div>

                <div class="tipo-quarto">
                    <img src="./img/casal-icon.svg" alt="Casal" />
                    <h2>Casal</h2>

                    <div class="quartos">
                        <div class="quarto">
                            <img src="./img/quartos/casal_2.jpg" alt="" />
                            <p>Quarto para casal.</p>
                            <span>
                                <h3>1 Cama de casal</h3>
                                <p>Diária: <strong>R$ 250,00</strong></p>
                            </span>
                             <a href="reservas.aspx"><button type="button">Reservar</button></a>
                        </div>

                        <div class="quarto">
                            <img src="./img/quartos/casal_1.jpg" alt="" />
                            <p>Quarto para 2 casais (sem filhos).</p>
                            <span>
                                <h3>2 Camas de Casal</h3>
                                <p>Diária: <strong>R$ 350,00</strong></p>
                            </span>
                             <a href="reservas.aspx"><button type="button">Reservar</button></a>
                        </div>
                    </div>
                </div>

                <div class="tipo-quarto">
                    <img src="./img/casais_filhos-icon.svg" alt="Casais com filhos" />
                    <h2>Casais com filhos</h2>

                    <div class="quartos">
                        <div class="quarto">
                            <img src="./img/quartos/casais_filhos_1.jpg" alt="" />
                            <p>Quarto para casal com filhos.</p>
                            <span>
                                <h3>1 Cama de casal e 1 Cama de Solteiro</h3>
                                <p>Diária: <strong>R$ 400,00</strong></p>
                            </span>
                             <a href="reservas.aspx"><button type="button">Reservar</button></a>
                        </div>

                        <div class="quarto">
                            <img src="./img/quartos/casais_filhos_2.jpg" alt="" />
                            <p>Quarto para casal com filhos</p>
                            <span>
                                <h3>1 Cama de casal e 2 Camas de Solteiro</h3>
                                <p>Diária: <strong>R$ 520,00</strong></p>
                            </span>
                             <a href="reservas.aspx"><button type="button">Reservar</button></a>
                        </div> 
                    </div>
                </div>
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
                        <a href="https://www.instagram.com/" target="_blank"><img src="./img/instragram.svg" /></a>
                        <a href="https://www.facebook.com/"><img src="./img/facebook.svg" /></a>
                        <a href="https://twitter.com/"><img src="./img/twitter.svg" /></a>
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
