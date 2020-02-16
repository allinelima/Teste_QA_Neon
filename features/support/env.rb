# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'


##### VARIÁVEIS DE CONFIGURAÇÃO #####
AMBIENTE = ENV['AMBIENTE']

#### AMBIENTES CARREGADOS #####
CONFIG = YAML.load_file(Dir.pwd + '/features/support/fixtures/ambientes.yml') # Dir.pwd procura em toda raiz do projeto (Mais abrangente)

##### CONFIG CAPYBARA #####
Capybara.configure do |config|
    config.default_driver = :selenium # selenium_chrome_headless ou selenium_chrome
    config.app_host = CONFIG[AMBIENTE]
    config.default_max_wait_time = 15
    Capybara.page.driver.browser.manage.window.maximize
  end