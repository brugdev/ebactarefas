            #language: pt

            Funcionalidade: Configura produto tamanho/gosto
            Como cliente da EBAC-SHOP
            Quero confugurar meu produto de acordo com meu tamanho e gosto
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto do meu interesse

            Cenário: produto válido
            Quando eu selecionar cor, tamanho e quantidade(<=10) do produto
            E clicar em comprar
            Então Deve inserir o produto no carrinho

            Cenário: produto inválido
            Quando eu não selecionar uma das opcões ou todas as opçcões de tamanho, cor e quantidade
            E clicar em comprar
            Então o sistema deve exibir um alerta "Escolher tamanho, cor e quantidade e obrigatório"

            Cenário: produto limitado
            Quando eu selecionar cor, tamanho e quantidade(>10) do produto
            E clicar em comprar
            Então o sistema deve exibir um alerta "Apenas 10 unidades por clientes"

            Cenário: produto limpo
            Quando eu selecionar cor, tamanho e quantidade do produto e quiser alterar a escolha
            E clicar em limpar
            Então o sistema deve limpar as definições do produto do cliente


            Esquema do Cenário: Compras no carrinho
            Quando eu selecionar <cor>,<tamanho> e <quantidade>
            E clicar em comprar
            Então Deve inserir o produto no carrinho

            Exemplos:
            | cor      | tamanho | quantidade |
            | "Orange" | "XS"    | "3"        |
            | "Blue"   | "S"     | "15"       |
            | "Red"    | "L"     | "0"        |
