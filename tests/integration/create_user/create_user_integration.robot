*** Settings ***
Resource        ../../../tests/base.resource
Documentation    Test case - E2E: Create User

Test Setup      Set Log Level       ${LOG_LEVEL}
Test Tags       @create_user     

*** Test Cases ***
 CT001 Create user successfully
   [Tags]    integration    my_test
   Create User      ../../../resource/data/create_user.json
   Should Be Equal As Strings    ${response.status_code}    201


# CT002 Buscar todos os usuários criados com autenticação
# CT003 Buscar todos os usuários criados sem autenticação
# CT004 Buscar Usuário por ID
# CT005 Editar Usuário
