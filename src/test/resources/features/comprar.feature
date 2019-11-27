Feature: Compra de productos

  Como departamento de ventas
  Quiero tener un mecanismo para realizar la compra de productos con promociones automáticas
  Para agilizar y masificar las ventas de productos de la tienda


  La compra genera una factura para el cliente comprador con el importe total, el cliente.
  En caso que se compren 3 libros se aplica una promocion 3 x 2 en el precio de los libros.
  En caso que se compren 1 o 2 libros no se aplica la promocion.
  Solo a los libros se le aplica la promoción 3 x 2.
  Si se compran libros y otro producto la promoción corre unicamente para los libros.

  Scenario: Compra de libros con promoción 3x2
    Given - La compra genera una factura
    When - Se realiza la compra de 3 libros
    Then - Se aplica una promoción 3x2
    
    Scenario: Compra de libros sin promoción 3x2
    Given - La compra genera una factura
    When - Se realiza la compra de 2 libros
    Then - No se aplica la promoción 3x2
    
    Scenario: Compra de otro producto
    Given - La compra genera una factura
    When - Se realiza la compra de otro producto
    Then - No se aplica la promoción
    
    Scenario: Compra de libros con promoción 3x2 y otro producto
    Given - La compra genera una factura
    When - Se realiza la compra de 3 libros
    And - Otro producto
    Then - Se aplica la promoción 3x2 solo para libro

