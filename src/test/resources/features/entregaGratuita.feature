Feature: Entrega gratuita para clientes VIP

  Como departamento de marketing
  Quiero ofrecer entrega gratuita a partir de cierta cantidad de libros para clientes VIP
  Para ofrecerles un beneficio e incentivar que compren más cantidad.


  La entrega gratuita se ofrece a clientes VIP cuando solicitan cierto numero de libros.
  La entrega gratuita no se ofrece a clientes regulares o a clientes VIP que compren otros items que no sean libros.
  El numero minimo de libros para obtener entrega gratuita es 5

  Scenario: Cliente VIP que compra 7 libros
    Given - El cliente es VIP
    When - Compra 7 libros
    Then - La entrega es gratuita
    
    
    Scenario: Cliente es VIP y compra 4 libros
    Given - El cliente es VIP
    When - Compra 4 libros
    Then - La entrega no es gratuita
    
    Scenario: Cliente no es VIP que compra 7 libros
    Given - El cliente no es VIP
    When - Compra 7 libros
    Then - La entrega no es gratuita
    
    Scenario: Cliente es VIP que compra 7 libros
    Given - El cliente es VIP
    When - Compra 7 libros
    And - Compra 7 DVD
    Then - La entrega no es gratuita
    
    Scenario: Cliente es VIP que compra 5 DVD
    Given - El cliente es VIP
    And - El cliente es Regular
    When - Compra 7 DVD
    Then - La entrega no es gratuita
    