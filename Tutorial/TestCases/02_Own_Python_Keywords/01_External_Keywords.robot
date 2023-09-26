*** Settings ***
Library    mylib.py
Library    WorstCalc.py


*** Test Cases ***
This Test Uses A Custom Python Keyword
    Check String Length    Hello Robots    12

This Test Will Fail
    Check String Length    Hello Humans    11

Check Calculator
    Reset    1
    Plus     2
    Times    3
    Minus    4
    Divide   5
    ${result} =    Get Result
    Should Be Equal    ${1}    ${result}