*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Ir Para URL
    [Arguments]    ${URL}
    Go To    ${URL}

#===========================
# Gherkin Style Dynamic Keywords
#===========================

Dado que ${keyword}
    Run Keyword  ${keyword}

Quando ${keyword}
    Run Keyword  ${keyword}

E ${keyword}
    Run Keyword  ${keyword}

Então ${keyword}
    Run Keyword  ${keyword}