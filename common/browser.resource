*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome

*** Keywords ***
Abrir Navegador
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    10s

Fechar Navegador
    Close Browser