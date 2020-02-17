# encoding: UTF-8
# frozen_string_literal: true

class HomePage < SitePrism::Page
     element :question, 'a[href="perguntas/artigo/360019117253-quero-cancelar-minha-conta-como-fao"]'
     element :open_account, 'a[class="button button--small bg-amarelo"]'
     element :lista, 'button[class="button hollow"]'

    set_url ''

    def acessar_perguntas
       find('a[href="/perguntas"]').click
    end

    def acessar_cancelamento
       opc = all('a[class="questions__section-link"]')
       opc.count
       opc[36].click
       question.click
    end

    def acessar_pejota
        head = all('li[ class="header__nav-list-item"]')
        head.count
        head[1].click
        open_account.click
        lista.click
    end
end