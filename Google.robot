*** Settings ***
Library    Selenium2Library

*** Test Cases ***
OpenBrowser/ Search
    Open Browser    https://www.google.com/    chrome
    Set Browser Implicit Wait    2       # Set waiting time before browser opens
    Sleep    1s    # Delay
    Input Text    name=q    Robot Framework   # Element + value
    Press Keys    name=q    ENTER     # Element + Pressing button key 'Enter'
    Sleep    2s
    Close Browser
    Log To Console    %{username} ran this test on %{os}. Successfully searched!    # Log this message to the console