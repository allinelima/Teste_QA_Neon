# encoding: UTF-8
# frozen_string_literal: true

class HomePage < SitePrism::Page
   element :question, 'a[href="perguntas/artigo/360019117253-quero-cancelar-minha-conta-como-fao"]'
   element :open_account, 'a[class="button button--small bg-amarelo"]'
   element :lista, 'button[class="button hollow"]'
   element :docs_socios, '#signup-documents-panel-content-2-label'
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
        
   end

   def acessar_lista
      open_account.click
         new_window = window_opened_by do
            open_account.click
         end
            within_window new_window do
               lista.click
               docs_socios.click
         end     
   end

end
