Teste-QA

Automatização do fluxo simples de validação de informações de para cancelamento e documentos validos para abrir uma conta PJ.

Getting Started

-git clone https://github.com/allinelima/Neon.git

Realizar o comando bundle install na pasta do projeto
Realizar o comando cucumber

Como Rodar o Teste

Cenario: Validar os documentos validos em Abra sua conta Pejota

cucumber -p prod -t @contapj

Cenario: Validar o texto da resposta da pergunta: “Quero cancelar minha conta. Como faço?”

cucumber -p prod -t @cancelamento

Built With

[cucumber]
[ruby]
[capybara]
[rspec]
[selenium-webdriver]

Contributing

https://github.com/teamcapybara/capybara https://rubygems.org/?locale=pt-BR

Observação
Devido ao erros apresentados em meu terminal Linux, referente a incompatibilidade da versão do Ruby, não consegui mapear alguns elementos, impossibilitando assim, a finalização dos testes.
