Feature: Auto-Avaliação
  As Usuário
  I Want To Criar lista de discussão.
  Scenario: Usuário cria uma lista de discussão com sucesso.
    When Estou logado no fórum.
    Then Posso ver a página inicial do fórum.
    When Clico em "Iniciar nova discussão".
    Then Posso criar uma nova discussão.
    Then Crio o título, resumo e corpo da discussão.
    And Posso categorizar e customizar a discussão.
    Then Categorizo e customizo a discussão.
    When Termino de configurar e categorizar.
    And Clico em "Lançar nova discussão".
    Then Recebo uma mensagem que a discussão foi criada com sucesso.
    Then A nova discussão já pode ser vista por todos os usuários do fórum.

  Scenario: Usuário cria uma lista de discussão sem título.
    When Estou logado no fórum.
    Then Posso ver a página inicial do fórum.
    When Clico em "Iniciar nova discussão".
    Then Posso criar uma nova discussão.
    Then Crio o resumo e corpo da discussão.
    And Posso categorizar e customizar a discussão.
    When Termino de configurar e categorizar.
    And Clico em "Lançar nova discussão".
    Then Recebo uma mensagem que o campo Título da discussão está em branco.

  Scenario: Usuário cria uma lista de discussão sem corpo.
    When Estou logado no fórum.
    Then Posso ver a página inicial do fórum.
    When Clico em "Iniciar nova discussão".
    Then Posso criar uma nova discussão.
    Then Crio o título da discussão.
    And Posso categorizar e customizar a discussão.
    When Termino de configurar e categorizar.
    And Clico em "Lançar nova discussão".
    Then Recebo uma mensagem que o campo Corpo da discussão está em branco.

    



