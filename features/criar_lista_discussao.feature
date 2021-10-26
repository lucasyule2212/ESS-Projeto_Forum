Feature: Auto-Avaliação
  As Usuário
  I Want To Criar lista de discussão.
  Scenario: Usuário pode criar uma lista de discussão.
    When Estou logado no fórum.
    Then Posso ver a página inicial do fórum.
    When Clico em "Iniciar nova discussão".
    Then Posso criar uma nova discussão.
    And Posso categorizar e customizar a discussão.
    Then Posso passar para a próxima meta, se existir.
    When Termino de configurar e categorizar.
    And Clico em "Lançar nova discussão".
    Then A nova discussão já pode ser vista por todos os usuários do fórum.

