*** Settings ***
Resource        ../../../tests/base.resource

*** Keywords ***
Search User
    [Documentation]     Used to search user.
    [Arguments]         ${user}=${EMPTY}

    ${headers}          Create Dictionary
    ...                 Content-Type=aplication/json
    ...                 Accept=aplication/json
    ...                 Authorization=Bearer ${TOKEN}
    
    Create Session      goRest              ${BASE_URL}     verify=True
    ${response}         Get On Session     goRest          /users/${user}
    ...                 headers=${headers}
    ...                 expected_status=any

    Set Test Variable   ${response}