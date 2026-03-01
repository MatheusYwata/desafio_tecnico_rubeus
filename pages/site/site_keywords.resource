*** Settings ***
Resource    ../../common/base_keywords.resource
Resource    ../../variables/variables.resource
Resource    site_locators.resource

*** Keywords ***
o usuário acessa a Home
    Ir Para URL    ${URL_HOME}

preencher campo
    [Arguments]    ${LOCATOR}    ${VALOR}
    Wait Until Element Is Visible    ${LOCATOR}
    Click Element    ${LOCATOR}
    Input Text    ${LOCATOR}    ${VALOR}

preenche o formulário com dados válidos
    preencher campo    ${INPUT_NOME}        ${NOME_VALIDO}
    preencher campo    ${INPUT_EMAIL}       ${EMAIL_VALIDO}
    preencher campo    ${INPUT_TELEFONE}    ${TELEFONE_VALIDO}

clicar em Concluir
    Click Element    ${BTN_CONCLUIR}

aparecerá a mensagem "É necessário informar a base legal"
    Sleep    3S
    Element Should Be Visible    ${MSG_BASE_LEGAL}

