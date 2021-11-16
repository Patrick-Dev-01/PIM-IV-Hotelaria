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
</head>
<body>
    <div class="container">
        <header>
            <img src="./img/logo-header.svg" alt="Hotelaria Imperador" />
            <h2>Hotelaria Imperador</h2>
        </header>

        <main>
            <div class="slogan">
                <div>
                    <h1>Hotel Imperador, o lugar mais confortável depois da sua casa</h1>
                    <a href="reserva.aspx"><button type="button">Reservar Agora</button></a>
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
                                <p>Diária: <strong>R$ 200,00</strong></p>
                            </span>
                            <button type="button">Reservar</button>
                        </div>
                        
                        <div class="quarto">
                            <img src="./img/quartos/solteiro_2.jpg" alt="" />
                            <p>Quarto solteiro Individual.</p>
                            <span>
                                <h3>2 Camas de solteiro</h3>
                                <p>Diária: <strong>R$ 300,00</strong></p>
                            </span>
                            <button type="button">Reservar</button>
                        </div>

                        <div class="quarto">
                            <img src="./img/quartos/solteiro_3.jpg" alt="" />
                            <p>Quarto solteiro Individual.</p>
                            <span>
                                <h3>3 Camas de solteiro</h3>
                                <p>Diária: <strong>R$ 300,00</strong></p>
                            </span>
                            <button type="button">Reservar</button>
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
                                <p>Diária: <strong>R$ 200,00</strong></p>
                            </span>
                            <button type="button">Reservar</button>
                        </div>

                        <div class="quarto">
                            <img src="./img/quartos/casal_1.jpg" alt="" />
                            <p>Quarto para 2 casais (sem filhos).</p>
                            <span>
                                <h3>2 Camas de Casal</h3>
                                <p>Diária: <strong>R$ 200,00</strong></p>
                            </span>
                            <button type="button">Reservar</button>
                        </div>
                    </div>
                </div>

                <div class="tipo-quarto">
                    <img src="./img/casais_filhos-icon.svg" alt="Casais com filhos" />
                    <h2>Casais com filhos</h2>

                    <div class="quartos">
                        <div class="quarto">
                            <img src="./img/quartos/casais_filhos_1.jpg" alt="" />
                            <p>Quarto para casal.</p>
                            <span>
                                <h3>1 Cama de casal</h3>
                                <p>Diária: <strong>R$ 200,00</strong></p>
                            </span>
                            <button type="button">Reservar</button>
                        </div>

                        <div class="quarto">
                            <img src="./img/quartos/casais_filhos_2.jpg" alt="" />
                            <p>Quarto para casal.</p>
                            <span>
                                <h3>1 Cama de casal</h3>
                                <p>Diária: <strong>R$ 200,00</strong></p>
                            </span>
                            <button type="button">Reservar</button>
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
