*** Settings ***
Resource                ../resources/keywords.robot
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers

*** Test Cases***
Hae koronaohjeet
    GoTo                https://thl.fi/fi
    TypeText            Hae...    korona\n
    ScrollText          Matkustaminen
    ClickText           Matkustaminen
