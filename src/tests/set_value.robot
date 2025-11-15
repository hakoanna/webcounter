*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When value given the counter understands it
    Go To  ${HOME_URL}
    Input Text  value  5
    Click Button  Aseta
    Page Should Contain  nappia painettu 5 kertaa
    Click Button  Nollaa