Feature: Autenticacao
  Como um membro registrado do forum
  Eu quero ter acesso a todas as funcionalidades internas acessíveis após um cadastro/login bem sucessedido

Scenario: Cadastro bem sucedido de um novo usuario
  Given Eu estou na página de Cadastro de Usuarios
  And O usuario "user_test" com senha "123" não está cadastrado no sistema
  When Eu cadastro o usuario "user_test" com senha "123" com sucesso
  Then Uma mensagem indicando que o usuario foi cadastrado com sucesso é exibida

Scenario: Cadastro de novo usuario com email invalido
  Given Eu estou na página de Cadastro de Usuarios
  When Eu tento cadastrar um novo usuário com o email "email invalido"
  Then Uma mensagem indicando que o email é invalido é exibida

Scenario: Cadastro de novo usuario com username ja existente
  Given Eu estou na página de Cadastro de Usuarios
  When Eu tento cadastrar um novo usuário com o username "username existente"
  Then Uma mensagem indicando que o username já existe é exibida

Scenario: Login de usuario bem sucedido
  Given Eu estou na página de Login de Usuarios
  And O usuario "user_test" com senha "123" está cadastrado no sistema como usuario comum
  When Eu preencho os campos username com "user_test" e senha com "123"
  Then Eu sou redirecionado para a home page do forum

Scenario: Login de usuario com username não existente
  Given Eu estou na página de Login de Usuarios
  And O usuario de username "user_test" e senha "123" não está cadastrado no sistema
  When Eu preencho os campos username com "user_test" e senha com "123"
  Then Uma mensagem de falha de login é exibida

Scenario: Login de usuario comum como administrador
  Given Eu estou na página de Login de Administrador
  And O usuario de username "user_test" e senha "123" está cadastrado no sistema como usuario comum
  When Eu preencho os campos username com "user_test" e senha com "123"
  Then Uma mensagem de falha de login é exibida

Scenario: Cadastro de um novo administrador
  Given Eu estou na página de cadastro de Administradores
  And Eu sou um administrador do forum
  And o administrador "user_test" com senha "123" nao está cadastrado no sistema com Administrador
  When Eu cadastro o administrador "user_test" com senha "123" com sucesso
  Then Uma mensagem indicando que o administrador foi cadastrado com sucesso é mostrada

Scenario: Login de um administrador com senha inválida
  Given Eu estou na página de Login de Administradores
  And Eu sou um administrador cadastrado no sistema com username "user_test" com senha "123"
  When Eu preencho os campos username com "user_test" e com senha "124"
  Then Uma mensagem de falha de login é exibida

Scenario: Login de um usuario com senha inválida
  Given Eu estou na página de Login de usuarios
  And Eu sou um usuario comum cadastrado no sistema com username "user_test" com senha "123"
  When Eu preencho os campos username com "user_test" e com senha "124"
  Then Uma mensagem de falha de login é exibida
  And Permaneço na mesma página de Login


Scenario: Cadastro de novo usuario com dado faltante
  Given Eu estou na página de cadastro de usuários
  When Eu cadastro o usuário "user_test" com a senha faltando
  Then A mensagem indicando falha no cadastro é mostrado

Scenario: teste de commit

