with Ada.Text_IO;use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
procedure Main is

--  begin
--     declare
--        type Nota is range 0..10 with Default_Value=>7;
--        type Array_Numeros is array(Positive range <>) of Integer with Default_Component_Value=>10;--RELLENA AUTOMATICAMENTE LOS DATOS DEL ARRAY CON EL VALOR DADO
--        --type Nota_Descriptiva is ("Excelente","Muy Bueno","Bueno","Regular","Malo"); NO FUNCIONA, TIENE QUE SER SIN LAS ""
--        --Muchos_Numeros:Array_Numeros(1..15);
--
--        Array_Vacio:Array_Numeros(1..0);
--        --Muchos_Numeros:Array_Numeros:=(1,3,5,6);
--        Muchos_Numeros:Array_Numeros(1..15):=(1=>2, 2|3|4=>7,5=><>, others=>5);
--
--        Pedacito:Array_Numeros:=Muchos_Numeros(1..4);--SLICE, UN SUBSTRING PARA QUE NOS ENTENDAMOS
--        Muchos_Mas_Numeros:Array_Numeros:=Muchos_Numeros & Pedacito;
--        Mi_Nota:Nota;
--     begin
--        for I in Muchos_Mas_Numeros'Range loop
--           Put_Line(Muchos_Mas_Numeros(I)'Image);
--        end loop;
--        Put_Line(Mi_Nota'Image);
--     end;


      type Componente_Adn is (A,G,C,T);
      --(Adenina, Guanina, Citosina, Timina);
   Componente:Componente_Adn:=A;
   Componente_Adn_A_String:array(Componente_Adn) of Unbounded_String
     :=("Adenina","Guanina","Citosina","Timina");
begin
      Put_Line(Componente'Image);


end Main;



