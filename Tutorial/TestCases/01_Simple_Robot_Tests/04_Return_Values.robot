*** Settings ***
Documentation     A test suite for valid login.
...
...               Keywords are imported from the resource file
Resource          ../../../live/Examples/Example2/keywords.resource
Suite Setup       Connect to Server
Test Teardown     Logout User
Suite Teardown    Disconnect

*** Test Cases ***

Access Own Details With User Rights
    [Documentation]    Tests if a user can access own details
    Login User    ironman    1234567890
    &{user_details} =    Get User Details By Name    ironman
    Should Be Equal    ${user_details}[login]    ironman
    Should Be Equal    ${user_details}[name]     Tony Stark
    Should Be Equal    ${user_details}[right]    user