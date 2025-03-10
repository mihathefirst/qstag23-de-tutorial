*** Settings ***
Documentation     A test suite for valid login.
...
...               Keywords are imported from the resource file
Resource          ../../../live/Examples/Example2/keywords.resource
Suite Setup       Connect to Server
Test Teardown     Logout User
Suite Teardown    Disconnect


*** Variables ***
${User Name}        Peter Parker
${User Login}       spider
${User Password}    123spiderman321


*** Test Cases ***
Create User With Admin Rights
    [Documentation]    Tests if a new users can be created with Admin User.
    Login Admin
    Create New User
    ...    name=${User Name}
    ...    login=${User Login}
    ...    password=${User Password}
    ...    right=user
    Verify User Details    ${User Login}    ${User Name}
    Logout User
    Login User    ${User Login}    ${User Password}
