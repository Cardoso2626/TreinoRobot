*** Settings ***
Library     SeleniumLibrary
*** Variables ***

#Dados do teste
${NomeDaMusica}    Travis Scott Astrothunder

#Variáveis de configuração
${URL}    https://www.youtube.com/
${Browser}    chrome

#Elementos
${InputPesquisa}    //input[@name="search_query"]
${ButtonSearch}    //button[@title="Pesquisar"]
${PrimeiraOpcao}    //img[@src="https://i.ytimg.com/vi/Pa67b28h0vY/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLBsn7zJT78DwwK1R68wvq9V8rL4JQ"]
${Prova}    //div[@id="actions-inner"]


*** Keywords ***

Dado que eu acesso o site do youtube
    Open Browser    ${URL}    ${Browser}
Quando digito o nome da música 
    Input Text    ${InputPesquisa}    ${NomeDaMusica}


E clico no botão buscar
    Click Element    ${ButtonSearch}
E clico na primra opção da lista
    Wait Until Element Is Visible    ${PrimeiraOpcao}    10s
    Click Element    ${PrimeiraOpcao}

Então o vídeo é executado
    Wait Until Element Is Visible    ${Prova}    10s
    Element Should Be Visible    ${Prova}
    Sleep    15s

    
*** Test Cases ***
Cenario 1: Executar vídeo no site do youtube
    [Tags]  Regressivo
    Dado que eu acesso o site do youtube
    Quando digito o nome da música 
    E clico no botão buscar 
    E clico na primra opção da lista
    Então o vídeo é executado