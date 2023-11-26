            #language: pt

            Funcionalidade: Finalizar compra
            Como cliente da EBAC-SHOP
            Quero Concluir meu cadastro
            Para finalizar minha compra

            Contexto:

            Dado que eu acesse a página de checkout

            Cenário: Finalização válida
            Quando eu preencher todos os campos obrigatórios e preencher de forma correta
            E preencher o e-mail de forma correta.
            Então deve finalizar minha compra

            Cenário: Finalização campo inválido
            Quando eu deixar de preencher uma ou mais campos obrigatórios
            E preencher o e-mail de forma correta.
            Então deve exibir um alerta "Campos obrigatórios não preenchidos"

            Cenário: Finalização email inválido
            Quando eu preencher todos os campos obrigatórios e preencher de forma correta
            E preencher o e-mail de forma incorreta.
            Então deve exibir um alerta "Formato de e-mail incorreto"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando Eu preencher <nome>,<sobrenome>, <pais>,<endereco>,<cidade>,<cep>,<telefone>
            E <end_email> @ <provedor>
            Então deve finalizar a compra

            Exemplos:
            | nome     | sobrenome  | pais     | endereco                     | cidade           | cep         | telefone         | end_ email | provedor    |
            | "Felipe" | "Henrique" | "Brasil" | "Rua do Mattoso 23"          | "Rio de Janeiro" | "20243-343" | " 21 96748-4033" | "felipeh"  | "gmail.com" |
            | "Maria"  | "Helena"   | "Canada" | "Rua Corinthian Boulevard 5" | "Toronto"        | "25656-77"  | " 1 96766-660"   | "mhria"    | "aol.com"   |
            | "Marina" | "Sousa"    | ""       | "Rua do Feitosa 567"         | "São Paulo"      | "55656-889" | " 21 96756-6674" | "mrina"    | "hotmail"   |
