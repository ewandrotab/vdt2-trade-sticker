*** Settings ***
Documentation     Testes de Login

Resource          ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Test Cases ***
Deve logar com sucesso    
    Go To Login Page
    Fill Login Form            papito@gmail.com    vaibrasil
    Submit Login Form
    User Logged In
    

Não deve logar com senha incorreta    
    Go To Login Page    
    Fill Login Form                    papito@gmail.com    pwd123
    Submit Login Form
    Toaster Message Should Be          Credenciais inválidas, tente novamente!
    
    

Não deve logar sem informar os dados de usuário e senha
    Go To Login Page        
    Submit Login Form
    Toaster Message Should Be    Por favor, informe suas credenciais!
    
