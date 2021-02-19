*** Settings ***
Resource                ../resources/keywords.robot
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers

*** Test Cases***
Search for a book
    [Documentation]     Find a book from public library
    AppState            Piki
    ClickText           Basic search
    VerifyText          Enter a search critera
    # TIP: Define TITLE and AUTHOR variables as test suite variables
    TypeText            Title    ${TITLE}
    TypeText            Author    ${AUTHOR}
    ClickText           Search    Restrict your search with these filters
    VerifyText          Search results    30s
    VerifyNoText        returned 0 hits
    # Sleeping for visual verification purposes...
    Sleep               2s
