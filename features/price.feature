# features/budget.feature
Feature: Ask for price
  In order to know the price of the cruise
  for a given departure date
  I have to complete a form 
  
  @mink:selenium2 @success
  Scenario: Completing the form with correct data should give success
  Given I am on "crucero-espana-francia-italia-10918768ID.htm"
  When I press "Presupuesto Gratuito"
  Then I should be on "reservar.php"
  When I select "34044" from "selectFechasSalida"
  And I select "I" from "selectCategoria"
  And I fill in "20" for "edadAdulto1"
  And I fill in "33" for "edadAdulto2"
  And I fill in "Ned" for "nombre"
  And I fill in "Stark" for "apellido1"
  And I fill in "666" for "tlf"
  And I fill in "nedstark@gmail.com" for "email"
  And I fill in "BDD" for "comentario"
  And I check "privacidad"
  When I press "Aceptar" 
  Then I should be on "reservar.php"
  And I should see "Su formulario se ha enviado con éxito"
  
  @mink:selenium2 @fail
  Scenario: Completing the form with incorrect email should give error
  Given I am on "crucero-espana-francia-italia-10918768ID.htm"
  When I press "Presupuesto Gratuito"
  Then I should be on "reservar.php"
  When I select "34044" from "selectFechasSalida"
  And I select "I" from "selectCategoria"
  And I fill in "20" for "edadAdulto1"
  And I fill in "33" for "edadAdulto2"
  And I fill in "Ned" for "nombre"
  And I fill in "Stark" for "apellido1"
  And I fill in "666" for "tlf"
  And I fill in "blablabla" for "email"
  And I fill in "BDD" for "comentario"
  And I check "privacidad"
  When I press "Aceptar" 
  Then I should be on "reservar.php"
  And I should see "Email no válido"