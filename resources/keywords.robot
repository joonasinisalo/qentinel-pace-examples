*** Settings ***
Library                 QWeb
Library                 String

*** Keywords ***
AppState
    [Arguments]         ${state}
    ${state}=           Convert To Lowercase    ${state}
    Run Keyword IF      '${state}'=='piki'       Open Piki

Open Piki
    SetConfig           Searchmode    draw
    GoTo                https://piki.verkkokirjasto.fi/en/web/arena
