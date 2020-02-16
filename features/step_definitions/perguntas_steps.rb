# encoding: UTF-8
# frozen_string_literal: true

Dado("que estou na home do site do Neon") do
    @homepage.load
end

Dado("acesso a aba de Perguntas") do
  @homepage.acessar_perguntas
  #expect(find('ul[class="header__nav-list""]')).to have_text 'Perguntas'
  #expect(find('h3[class="questions__category-title"]')).to have_text 'Outros assuntos'
  #expect(find('li[class="questions__section--visible"]')).to have_text 'Cancelamento'
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
  #expect(find('li[ class="header__nav-list-item"]')).to have_text 'Pejota'
end

Então("Valido quais documentos são validos na opção") do
  pending # Write code here that turns the phrase above into concrete actions
end
