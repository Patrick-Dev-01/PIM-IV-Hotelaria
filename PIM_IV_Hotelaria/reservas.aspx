<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reservas.aspx.cs" Inherits="PIM_IV_Hotelaria.Reservas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="./css/reserva.css" />
    <link rel="stylesheet" type="text/css" href="./css/styles.css" />
    <title>Hotelaria Imperador - Reserva</title>
    <script src="./js/menu_mobile.js"></script>
    <script src="./js/mascaras.js"></script>
    <script src="./js/diaria.js"></script>
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
            <div class="titulo">
                <h1>Faça sua Reserva</h1>
            </div>

            <section>
                <asp:Label ID="server_msg" runat="server" Text="" class="msg_servidor"></asp:Label>

                <form method="post" id="form1" runat="server">
                    <label>
                        CPF
                        <span>
                            <input type="text" runat="server" id="name_cpf" placeholder="000.000.000-00" oninput="mascara(`name_cpf`, `${event.target.value}`);" value=""/>
                            <p runat="server" id="msg_erro_cpf" style="color: red;"></p>
                        </span>
                    </label>

                    <label>
                        Nome
                        <span>
                            <input type="text" runat="server" name="nome" id="name_nome" value=""/>
                            <p runat="server" id="msg_erro_nome" style="color: red;"></p>
                        </span>
                    </label>

                    <label>
                        E-mail
                        <span>
                            <input type="text" runat="server" id="name_email" value=""/>
                            <p runat="server" id="msg_erro_email"></p>
                        </span>
                    </label>

                    <label>
                        Celular
                        <span>
                            <input type="text" runat="server" name="celular" id="name_celular" placeholder="(00) 00000-0000" oninput="mascara(`name_celular`, `${event.target.value}`);" value="" />
                            <p runat="server" id="msg_erro_celular"></p>
                        </span>
                    </label>

                    <div class="quartos">
                        <select runat="server" id="name_quarto" name="quarto" onchange="diaria(`${event.target.value}`);">
                            <option value="">Quarto</option>
                            <option value="1">Solteiro - 1 Cama de Solteiro</option>
                            <option value="2">Solteiro - 2 Camas de Solteiro</option>
                            <option value="3">Solteiro - 3 Camas de Solteiro</option>
                            <option value="4">Casal - 1 Cama de Casal</option>
                            <option value="5">Casal - 2 Camas de Casal</option>
                            <option value="6">Casal e Filhos - 1 Cama de Casal e 1 Cama de Solteiro</option>
                            <option value="7">Casal e Filhos - 1 Cama de Casal e 2 Camas de Solteiro</option>
                        </select>
                        <p id="msg_erro_quarto" runat="server"></p>
                    </div>

                     <div class="tipo-pagamento">
                         <div class="pagamento">
                             <select name="pagamento" id="name_pagamento" runat="server" onchange="Validar('pagamento', `${event.target.value}`);">
                                <option value="">Pagamento</option>
                                <option value="dinheiro">Dinheiro</option>
                                <option value="cartao">Cartão</option>
                                <option value="pix">PIX</option>
                            </select>

                            <span>
                                <input type="number" id="name_diaria" runat="server" placeholder="R$ 0,00" disabled="disabled" value="" style="cursor: not-allowed"/> 
                            </span>
                         </div>
                        <p runat="server" id="msg_erro_pagamento" style="color: red"></p>                        
                    </div>

                    <div class="checks">
                        <label>
                            <strong>Check In</strong>
                            <input type="date" id="name_checkIn" name="checkIn" runat="server"/>
                            <p runat="server" id="msg_erro_checkIn" class="msg_erro_checkIn"></p>            
                        </label>

                        <label>
                            <strong>Check Out</strong>
                            <input type="date" id="name_checkOut" name="checkOut" runat="server"/>
                            <p runat="server" id="msg_erro_checkOut" class="msg_erro_checkOut"></p>            
                        </label>
                    </div> 
                    
                    <asp:Button class="btn-enviar" type="button" runat="server" onclick="Button_Enviar" Text="Concluir Reserva"></asp:Button>
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
                        <a href="https://www.instagram.com/" target="_blank"><img src="./img/instragram.svg" /></a>
                        <a href="https://www.facebook.com/"><img src="./img/facebook.svg" /></a>
                        <a href="https://twitter.com/"><img src="./img/twitter.svg" /></a>
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
