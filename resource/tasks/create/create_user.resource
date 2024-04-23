*** Settings ***
Resource        ../../../tests/base.resource

*** Keywords ***
Create User
    [Documentation]     Used to create user.
    [Arguments]         ${file} 

    ${headers}          Create Dictionary
    ...                 Content-Type=application/json
    ...                 Accept=application/json
    ...                 Authorization=Bearer ${TOKEN}
    
    ${DATA}             Load Json From File	        ${CURDIR}/${file}

    Create Session      goRest              ${BASE_URL}     verify=True
    ${response}         POST On Session     goRest          /users
    ...                 headers=${headers}
    ...                 json=${DATA}

    Set Test Variable   ${response}