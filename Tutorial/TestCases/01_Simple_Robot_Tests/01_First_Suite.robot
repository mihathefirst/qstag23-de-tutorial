*** Settings ***
Documentation     A test suite for valid login.
...
...               Keywords are imported from the resource file

Resource          ../../../live/Examples/Example2/keywords.resource
Suite Setup       Connect to Server
Test Teardown     Logout User
Suite Teardown    Disconnect

*** Test Cases ***
Access All Users With Admin Rights
    [Documentation]    Tests if all users can be accessed with Admin User.
    Login Admin
    Print All Users

Access All Users With User Rights FAILING
    [Documentation]    Tests if all users can be accessed with default user rights.
    ...                Test will fail as admin rights are required.
    Login User    login=ironman    password=1234567890
    Print All Users
