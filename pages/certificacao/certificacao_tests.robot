*** Settings ***
Library     SeleniumLibrary
Resource    ../../common/browser.resource
Resource    certificacao_keywords.resource

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

CT01 - Não deve avançar para etapa 2
    [Tags]    CT01
    Dado que o usuário acessa página de certificação
    E preencher formulario de Certificacao com dados válidos
    Quando clicar em Concluir
    Então aparecerá a mensagem "É necessário informar a base legal"
    E permanecerá na etapa 1

CT02 - Botão 'Quero me certificar' do final da página redireciona incorretamente
    [Tags]    CT02
    Dado que o usuário acessa página de certificação
    Quando clicar em Quero Me Certificar no final da página
    Então será redirecionado para Google

CT03 - Cards “Outros Cursos” não clicáveis
    [Tags]    CT03
    Dado que o usuário acessa página de certificação
    Quando clicar em "Saiba mais" dentro dos cards “Outros Cursos”
    Então permanece igual pois os cards não sao clicáveis

CT04 - Ícone do YouTube redireciona incorretamente
    [Tags]    CT04
    Dado que o usuário acessa página de certificação
    Quando clicar no ícone do YouTube no rodapé
    Então será redirecionado para canal do Tiktok da Rubeus

CT05: Banner Saiba Mais não possui link funcional
    [Tags]    CT05
    Dado que o usuário acessa página de certificação
    Quando clicar em "Saiba mais" no banner de certificação
    Então permanecerá na mesma página, pois o botão não possui link funcional