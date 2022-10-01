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

Deve exibir notificação toaster se a senha não for preenchida
    Go To Login Page    
    Fill Login Form                    papito@gmail.com    ${EMPTY}
    Submit Login Form
    Toaster Message Should Be          Por favor, informe a sua senha secreta!   

Deve exibir notificação toaster se o email não for preenchido
    Go To Login Page    
    Fill Login Form                    ${EMPTY}        vaibrasil    
    Submit Login Form
    Toaster Message Should Be          Por favor, informe o seu email!   

Deve exibir notificação toaster se email e senha não forem preenchidos
    Go To Login Page        
    Submit Login Form
    Toaster Message Should Be    Por favor, informe suas credenciais!
    
