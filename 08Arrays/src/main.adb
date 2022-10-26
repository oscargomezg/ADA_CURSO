with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random;use Ada.Numerics.Float_Random;
with Ada.Strings.Unbounded;use Ada.Strings.Unbounded;
procedure Main is
   type Indice_Diez_Numeros is range 1..10;
   type Arrey_Diez_Numeros is array (Indice_Diez_Numeros) of Integer;

   --  Diez_Numeros:Arrey_Diez_Numeros;
   --  G:Generator;
begin
   --CARGAR EL ARRAY DE 10 NUMEROS
   --  for I in Indice_Diez_Numeros loop
   --     --Diez_Numeros(i):= Integer(I);
   --     Diez_Numeros(I):=Integer(Random(G)*Float(Integer'Last));
   --  end loop;

   --  Diez_Numeros:=(1,2,3,4,5,6,7,8,9,10);
   --  for I in Diez_Numeros'First..Diez_Numeros'Last loop
   --     Put_Line(Diez_numeros(i)'Image);
   --     end loop;

--     declare
--        function "+"(Value:String)return Unbounded_String renames To_Unbounded_String;
--        type Dia is(Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
--        Dia_En_Ingles:array(Dia) of Unbounded_String:=(+("Monday"),
--                                                       +("Tuesday"),
--                                                       +("Wednesday"),
--                                                       +("Thursday"),
--                                                       +("Friday"),
--                                                       +("Saturday"),
--                                                       +("Sunday"));
--
--  begin
--        --  Un_Dia:=Miercoles;
--        --  Put_Line(To_String(Dia_En_Ingles(Un_Dia)));
--
--        for Un_Dia in Dia_En_Ingles'Range loop
--           Put_Line(To_String(Dia_En_Ingles(Un_Dia)));
--           end loop;
--     end;

--     declare
--        --DECLARAR UN TIPO DE ARRAY DE 5 NUMEROS
--        --DECLARAR UNA FUNCION QUE DEVUELVE ARRAY ANTERIOR CARGADO CON NUMEROS AL AZAR
--        type Indice is range 1..5;
--        type Array_Random is array(Indice) of Natural;
--
--        function Generador_Aleatorio return Array_Random is
--           G:Generator;
--           Array_Num:Array_Random;
--           begin
--           for I in Array_Num'Range loop
--              Array_Num(i):=Natural(Random(G)*Float(Natural'Last));
--           end loop;
--
--           return Array_Num;
--
--        end Generador_Aleatorio;
--
--           Array_Num:Array_Random;
--
--  begin
--
--        Array_Num:=Generador_Aleatorio;
--
--        for I in Array_Num'Range loop
--           Put_Line(Array_Num(i)'Image);
--
--           end loop;
--  end;

--     declare
--        --  type Array_Cinco_Numeros is array(1..5) of Positive;
--        --  type Array_Siete_Numeros is array(1..7) of Positive;
--        --  type Array_Diez_Numeros is array(1..10) of Positive;
--
--        type Array_Numeros is array (Integer range <>) of Positive;
--        Diez_Numeros:Array_Numeros(1..10);
--  begin
--        --Diez_Numeros:=(1,2,3,4,5,6,7,8,9,10);
--        Diez_Numeros:=(1=>1, 5=>5, 7=>7, others =>100);
--        for I in Diez_Numeros'Range loop
--           Put_Line(Diez_Numeros(I)'Image);
--        end loop;
--
--
--  end;
--

   declare
      --DECLARAR UN TIPO QUE SEA UN ARRAY DE NUMEROS
      type Array_Numeros is array (Integer range <>) of Positive;
      --DECLARAR UNA FUNCIÓN QUE RECIBA UN ARRAY Y DEVUELVA EL MAXIMO

      function Maximo (Input : Array_Numeros) return Integer is
         Maximo:Integer:=0;
         begin
         for I in Input'Range loop
            if Input(I)>Maximo then
               Maximo:=Input(I);
               end if;
         end loop;

         return Maximo;

      end Maximo;

      Longitud_Ingresada:Integer;

begin

      Put_Line("¿Cuantos numeros deseas ingresar?");
      Longitud_Ingresada:=Integer'Value(Get_Line);

      declare
         Numeros:Array_Numeros(1..Longitud_Ingresada);
         Maximo:Integer;


      begin

         for I in Numeros'Range loop
            Put_Line("Introduzca el numero" & I'Image);
            Numeros(I):=Integer'Value(Get_Line);
         end loop;
         Maximo:=Maximo(Numeros);

         Put_Line("El maximo de los valores del array es: " & Maximo'Image);
      end;

end;


end Main;
