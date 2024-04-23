*** Settings ***
Resource        ../../../tests/base.resource
Documentation    Test case - E2E: Search User

Test Setup      Set Log Level       ${LOG_LEVEL}
Test Tags       @search_user     

*** Test Cases ***
 CT001 Search all users successfully with token
  [Tags]    integration    my_test
  Search User
  Should Be Equal As Strings    ${response.status_code}        200
  Set Test Variable             ${_id}   ${response.json()[0]["id"]}
  Should Be Equal As Strings    ${response.json()[0]["id"]}    ${_id}

 CT002 Search user in the URL and successfully with token
  [Tags]    integration    my_test
  Search User    6860682
  Should Be Equal As Strings    ${response.status_code}       200
  Should Be Equal As Strings    ${response.json()["id"]}      6860682
  Should Be Equal As Strings    ${response.json()["email"]}   AAAAAAAAk@a.com
  Should Be Equal As Strings    ${response.json()["name"]}    yabegc asiudohebc



# CT002 Buscar todos os usuários criados com autenticação
# CT003 Buscar todos os usuários criados sem autenticação
# CT004 Buscar Usuário por ID
# CT005 Editar Usuário
