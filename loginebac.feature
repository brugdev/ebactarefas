            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero Fazer login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login (autenticação) da plataforma

            Cenário: Autenticação válida
            Quando eu digitar o usuário "felipe@gmail.com"
            E a senha "felipe123"
            Então deve exibir a tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "userinexistente@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválida"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "usercerto@ebac.com.br"
            E a senha "senha@errada"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválida"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando Eu digitar o <usuario>
            E a senha <senha>
            Então deve exibir tela de checkout

            Exemplos:
            | usuario                | senha       |
            | "joão@gmail.com.br"    | "test55523" |
            | "maria@hotmail.com.br" | "teste3423" |
            | "joao@aol.com.br"      | "testerr23" |