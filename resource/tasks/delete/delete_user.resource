*** Variables ***
${name}    John Wick
${gender}    male
${email}    johnwick@email.com
${status}    active


*** Keywords ***
Criar um usuário com sucesso
    ${create_user}=    Load JSON From File    ..resource/create_user.json
    ${HEADERS}=    Create Dictionary    Content-Type=aplication/json    Accept=application/json
    ${response}=    POST    ${URL-Base}    json=${create_user}    headers=${HEADERS}    expected_status=200
    Should Contain    ${response.text}    "${name}"    "${gender}"    "${email}"    "${status}"
    ${response_body}=    Evaluate    json.loads('''${response.content}''')
    Set Global Variable    ${response}
    Set Global Variable    ${response_body}