with Ada.Text_IO;use Ada.Text_IO;
with Geometria;use Geometria;
with Ada.Float_Text_IO;use Ada.Float_Text_IO;
procedure Main is
   --  --  type Cantidad_Peras is new Integer;
   --  --  type Cantidad_Manzanas is new Integer;
   --
   --  --type Cantidad is new Integer;
   --  --type Cantidad is range 0..300;
   --  --type Cantidad is range 0..Integer'Last;
   --  type Cantidad is range 0..2**63-1;--Uso de 64 bits
   --  subtype Cantidad_Peras is Cantidad;
   --  subtype Cantidad_Manzanas is  Cantidad;
   --
   --
   --  Peras:Cantidad_Peras;
   --  Manzanas:Cantidad_Manzanas;
   --  Frutas:Cantidad;
   --  --Total:Integer;
begin
   --  Peras:=2;
   --  Manzanas:=4;
   --  --Peras:=Manzanas;--ERROR
   --  Frutas:=300;--NO FUNCIONA PUESTO QUE ESTARIA FUERA DE RANGO
   --
   --  --Total:=Peras+Manzanas; NO FUNCIONARÁ, PUESTO QUE TOTAL ES DE TIPO DE DATO INTEGER, MIENTRAS QUE FRUTAS ES DEL TIPO CANIDAD, DEL CUAL AMABS CANTIDADES DE FRUTAS SON UN SUBTIPO
   --  Put_Line("En total tengo " & Frutas'Image & " frutas");
   --
   --  declare
   --     type Mi_Tipo is new Integer;
   --     Variable:Mi_Tipo;
   --  begin
   --     Variable:=3;
   --  end;
   --  declare
   --     type Distancia is new Float;
   --     type Area is new Float;
   --     Base:Distancia;
   --     Altura:Distancia;
   --     Superficie:Area;
   --
   --     procedure Procedure_En_Declare is
   --     begin
   --        --HACER PROCEDIMIENTOS EN DECLARE
   --     end Procedure_En_Declare;
   --
   --     function "*"(Left:in Distancia, Right: in Distancia) return Area is --SOBRECARGA DE OPERADORES
   --     begin
   --        return Area(Float(left)*Float(Right));
   --        end;
   --  begin
   --     Base :=10.0;
   --     Altura:=30.0;
   --     --Superficie:=Area(Base *Altura);--CASTEO NECESARIO PARA QUE FUNCIONE, TIPO AREA ES DIFERENTE AL TIPO DISTANCIA
   --     Superficie:=Base *Altura;--FUNCIONA CON LA FUNCION "*" DEBIDO A LA SOBRECARGA DE OPERADORES
   --  end;

   --EJEMPLO CON PACKAGE
--     declare
--        Base:Distancia:=10.0;
--        Altura:Distancia:=5.0;
--        Area_Triangulo:Area;
--  begin
--     Area_Triangulo:=(Base * Altura) /2.0;
--  end;

--     declare
--        type Dias is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
--        type Meses is (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre, Diciembre);
--        Primer_Dia_Semana:Dias;
--  begin
--        Primer_Dia_Semana:=Lunes;
--        for Dia in Dias loop
--           Put_Line("Hoy es " & Dia'Image);
--           case Dia is
--              when Lunes=>
--                 Put_Line("Feliz comienzo de semana");
--              when Sabado..Domingo=>
--                 Put_Line("Feliz fin de semana");
--              when Martes..Jueves=>;
--                 Put_Line("A tope en la semana");
--              when Viernes=>
--                 Put_Line("Tu cuerpo lo sabe");
--        end loop;
      --DATO MODULAR
--     declare
--        type Max_1000 is mod 1000;--VA DE 0 A 1000, NUNCA HAY OVERFLOW, SAOLAMENTE VUELVE AL PRINCIPIO
--        Numero:Max_1000;
--  begin
--        Numero:=500;
--        Put_Line("Vale " & Numero 'Image);
--        Numero:=Numero+400;
--        Put_Line("Ahora vale " & Numero 'Image);
--        Numero:=Numero+102;
--        Put_Line("Ahora vale " & Numero 'Image);
--  end;


   declare
      type Dinero is Digits 2;
      Riqueza:Dinero;
begin
      Riqueza:=100.0696;
      Put(Float(Riqueza),0,2,0);
end;


end Main;
