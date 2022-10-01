*** Settings ***

Documentation        Login Page

Library        Browser

*** Keywords ***
Go To Login Page    
    New Page             https://trade-sticker-dev.vercel.app/
    Set Viewport Size    1920    1080

Fill Login Form
    [Arguments]          ${email}    ${password}
    Fill Text            css=input[name=email]         ${email}
    Fill Text            css=input[name=password]      ${password}

Submit Login Form
    Click                css=button >> text=Entrar

Toaster Message Should Be
    [Arguments]                ${message}
    ${locator}                 Set Variable        css=.Toastify__toast-body div >> text=${message}
    Wait For Elements State    ${locator}          visible        3      