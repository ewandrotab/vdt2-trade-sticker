*** Settings ***
Documentation    Testes de negociação de figurinhas da copa

Resource          ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Test Cases ***
Deve negociar a figurinha Neymar Legend
    
    Do Login          papito@gmail.com    vaibrasil

    Search User       Legend
    Select Sticker    Neymar Jr
    Get In Touch
    WhatsApp Sticker Message    Neymar Jr
    