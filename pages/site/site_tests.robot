*** Settings ***
Library     SeleniumLibrary
Resource    ../../common/browser.resource
Resource    site_keywords.resource

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***


CT01 - Envio de Formulário Exibe Erro Base Legal
    [Tags]    formulario
    Dado que o usuário acessa a Home
    E preenche o formulário com dados válidos
    Quando clicar em Concluir
    Então aparecerá a mensagem "É necessário informar a base legal"