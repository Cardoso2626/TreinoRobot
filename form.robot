*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${input_email}    //input[@id="email"]

${input_senha}    //input[@id="pass"]

${button_submit}    //button[@name="login"] 
*** Keywords ***
abrir navegador e acessar site
    Open Browser    https://www.facebook.com/    chrome

preencher campos
    Input Text    ${input_email}    phcs_saraiva@hotmail.com
    Input Text    ${input_senha}    lou

clicar em submit 
    Click Element     ${button_submit}
    Sleep    1 0s

fechar navegador
    Close Browser
*** Test Cases ***

Cenário 1: Preencher formulário
    abrir navegador e acessar site
    preencher campos
    clicar em submit 
    fechar navegador



