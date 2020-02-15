#language: pt
Funcionalidade: validar a tela de alerta de preços
Eu como usuário/sistema Neon quero obter algumas informações sobre a conta
Quero cancelar minha conta,tirar minhas dúvidas e ver qual a documentação necessaria para abrir uma conta Pejota.


Contexto: Estou no site do Neon
Dado que estou na home do site do Neon
E acesso a aba de Perguntas

@cancelamento
Cenario: Validar o texto da resposta da pergunta: “Quero cancelar minha conta. Como faço?”
Quando acesso dentro do Topico Outros Assuntos a opção de Cancelamento
Então Valido se o texto de resposta esta com os passos informados corretos

