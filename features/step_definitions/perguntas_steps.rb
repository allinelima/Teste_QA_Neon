# encoding: UTF-8
# frozen_string_literal: true

Dado("que estou na home do site do Neon") do
    @homepage.load
end

Dado("acesso a aba de Perguntas") do
  @homepage.acessar_perguntas
end

Quando("acesso dentro do Topico Outros Assuntos a opção de Cancelamento") do
  @homepage.acessar_cancelamento
  page.assert_text('Quero cancelar minha conta. Como faço?')
end

Então("Valido se o texto de resposta esta com os passos informados corretos") do
  expect(find('div[class="col-sm-8 order-1 order-sm-12"]')).to have_text 'Quero cancelar minha conta. Como faço?'
  expect(find('div[class="col-sm-8 order-1 order-sm-12"]')).to have_text 'Meu Neon > Configurações > Cancelar conta.'
  expect(find('div[class="col-sm-8 order-1 order-sm-12"]')).to have_text 'Ah, você pode cancelar se tiver com o saldo da conta e investimentos zerados, nenhuma contestação em andamento e nenhum limite comprometido no cartão de crédito.'
end

Quando("acesso a Abra sua conta dentro da aba Pejota") do
  @homepage.acessar_pejota
end

Então("Então verifico quais documentos de todos os socios são necessários.") do
  @homepage.acessar_lista
  page.assert_selector('p', :text => 'São válidos os documentos RG, CNH ou RNE (no caso de estrangeiros).', :visible => true)
end
