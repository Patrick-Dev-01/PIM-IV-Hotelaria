<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reserva.aspx.cs" Inherits="PIM_IV_Hotelaria.Reserva" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="./css/reserva.css" />
    <link rel="stylesheet" type="text/css" href="./css/styles.css" />
    <title>Hotelaria Imperador - Reserva</title>
    <script src="./js/script.js"></script>
</head>
<body>
     <div class="container">
        <header>
            <img src="./img/logo-header.svg" alt="Hotelaria Imperador" />
            <h2>Hotelaria Imperador</h2>
        </header>

        <main>
            <div class="titulo">
                <h1>Faça sua Reserva</h1>
            </div>

            <section>
                <form method="post" id="form1" runat="server">
                    <label>
                        CPF
                        <span>
                            <input type="number" name="cpf" id="cpf" placeholder="000.000.000-00" />
                            <p id="msg-erro-cpf"></p>
                        </span>
                    </label>

                    <label>
                        Nome
                        <span>
                            <input type="text" name="nome" id="nome" />
                            <p id="msg-erro-nome"></p>
                        </span>
                    </label>

                    <label>
                        Sobrenome
                        <span>
                            <input type="text" name="sobrenome" id="sobrenome" />
                            <p id="msg-erro-sobrenome"></p>
                        </span>
                    </label>

                    <label>
                        E-mail
                        <span>
                            <input type="email" name="email" id="email" />
                            <p id="msg-erro-email"></p>
                        </span>
                    </label>

                    <select name="quarto" onchange="adicionarOpcoes(event.target.value);">
                        <option value="">Quarto</option>
                        <option value="solteiro">Solteiro</option>
                        <option value="casal">Casal</option>
                        <option value="casal com filhos">Casal com filhos</option>
                    </select>

                    <select name="descricao" id="descricao  ">
                        <option>Descrição</option>
                    </select>

                    <div class="checks">
                        <label>
                            <strong>Check In</strong>
                            <input type="date" name="checkIn" />
                        </label>

                        <label>
                            <strong>Check Out</strong>
                            <input type="date" name="checkOut" /><br>
                        </label>
                    </div>

                    <label>Diária
                        <span>
                            <input type="number" placeholder="R$ 0,00" disabled="disabled" style="cursor: not-allowed"/>
                        </span>
                    </label>

                    <a href="#"><button type="button" onclick="Enviar();">Concluir Reserva</button></a>
                </form>
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
                <h4>Hotelaria Imperador 2021 - Alguns Diretos Reservados</h4>
            </div>
        </footer>
    </div>
</body>
</html>
