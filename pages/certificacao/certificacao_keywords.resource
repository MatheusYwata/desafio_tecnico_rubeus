*** Settings ***
Resource    ../../common/base_keywords.resource
Resource    ../../variables/variables.resource
Resource    certificacao_locators.resource

*** Keywords ***

o usuário acessa página de certificação
    Ir Para URL    ${URL_CERTIFICACAO}

Preencher Campo
    [Arguments]    ${LOCATOR}    ${VALOR}
    Wait Until Element Is Visible    ${LOCATOR}
    Click Element    ${LOCATOR}
    Input Text    ${LOCATOR}    ${VALOR}

preencher formulario de Certificacao com dados válidos
    Preencher Campo    ${INPUT_NOME_CERT}        ${NOME_VALIDO}
    Preencher Campo    ${INPUT_EMAIL_CERT}       ${EMAIL_VALIDO}
    Preencher Campo    ${INPUT_TELEFONE_CERT}    ${TELEFONE_VALIDO}

clicar em Concluir
    Wait Until Element Is Visible        ${BTN_CONCLUIR}
    Click Element    ${BTN_CONCLUIR}

aparecerá a mensagem "É necessário informar a base legal"
    Sleep    3S
    Element Should Be Visible    ${MSG_BASE_LEGAL_CERT}

permanecerá na etapa 1
    Element Should Be Visible    ${INDICADOR_ETAPA_1}

clicar em Quero Me Certificar no final da página
    Wait Until Element Is Visible    ${BTN_QUERO_ME_CERTIFICAR_RODAPE}
    Click Element    ${BTN_QUERO_ME_CERTIFICAR_RODAPE}

será redirecionado para Google
    Switch Window    NEW
    Location Should Contain    google

# CT03

clicar em "Saiba mais" dentro dos cards “Outros Cursos”
    Wait Until Element Is Visible    ${SAIBA_MAIS_OUTROS_CURSOS}
    ${url_inicial}=    Get Location
    Click Element      ${SAIBA_MAIS_OUTROS_CURSOS}
    Sleep    1s
    ${url_final}=      Get Location
    Should Be Equal    ${url_final}    ${url_inicial}

permanece igual pois os cards não sao clicáveis
    Location Should Be    ${URL_CERTIFICACAO}

# CT04

clicar no ícone do YouTube no rodapé
    Wait Until Element Is Visible    ${ICON_YOUTUBE}
    Click Element    ${ICON_YOUTUBE}

será redirecionado para canal do Tiktok da Rubeus
    Switch Window    NEW
    Location Should Contain    tiktok

# CT05

clicar em "Saiba mais" no banner de certificação
    Wait Until Element Is Visible    ${BTN_SAIBA_MAIS_CERT}
    Click Element    ${BTN_SAIBA_MAIS_CERT}

permanecerá na mesma página, pois o botão não possui link funcional
    ${href}=    Get Element Attribute    ${BTN_SAIBA_MAIS_CERT}    href
    Should Be Equal    ${href}    ${None}
    ${url_inicial}=    Get Location
    Click Element      ${BTN_SAIBA_MAIS_CERT}
    Sleep    1s
    ${url_final}=      Get Location
    Should Be Equal    ${url_final}    ${url_inicial}