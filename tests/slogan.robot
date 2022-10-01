*** Settings ***
Documentation    Testes de inicialização da Home Page

Resource          ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Variables ***
${slogan}         Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Deve validar o slogan da home page    
    New Page             https://trade-sticker-dev.vercel.app/    
    Get Text             css=.logo-container h2    contains    ${slogan}
