*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${variavel1}    teste
${variavel2}    12121

*** Keywords ***
abrir site do google
    Open Browser    https://www.google.com/search?q=google&oq=google&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg7MgYIAhBFGDsyBggDEEUYPDIGCAQQRRg8MgYIBRBFGDwyBggGEEUYPDIGCAcQRRg80gEHNTkyajBqN6gCCLACAfEFnzwVwAdjC40&sourceid=chrome&ie=UTF-8    chrome
pausar por 5 segundos
    Sleep    5s
abrir o site do linkedIn
    Open Browser    https://www.linkedin.com/in/pedro-saraiva1/    chrome

*** Test Cases ***

Cenario 1: teste de abrir site google
    abrir site do google 
    pausar por 5 segundos
Cenario 2: teste de abrir linkedIn
    abrir o site do linkedIn
    pausar por 5 segundos
 




