*** Settings ***

Documentation        Arquivo principal do projeto

Library    Browser

Resource    pages/login.resource
Resource    pages/dash.resource

*** Variables ***
${BROWSER}        chromium


*** Keywords ***
Do Login
    [Arguments]                ${email}    ${password}
    Go To Login Page
    Fill Login Form            ${email}    ${password}
    Submit Login Form
    User Logged In

Start Test
    New Browser          headless=false    browser=${BROWSER}
Finish Test
    Sleep    1
    Take Screenshot