with Ada.Text_IO;use Ada.Text_IO;
with Ada.Numerics.Float_Random;use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Float_Array;use Float_Array;
procedure Main is
   --type  Montos is array(Integer range <>) of Float;
   type Dinero is digits 2;
   --INDICE EMPIEZA EN POSICION 1
   type  Montos is array(Positive range <>) of Dinero;
   --INDICE EMPIEZA EN POSICION 0
   type  Array_Natural is array(Natural range <>) of Dinero;
   --EMPIEZA EN LA POSICION INTEGER'FIRST
   type Array_Integer is array(Integer range<>)of Dinero;
   --Ventas:Montos(1..5);
   Ventas:Montos:=(10.0,2.3,6.7);
   --Ventas(0)=2.3;--NO EXISTE POSICION 0, CON LO CUAL DA ERROR
   Ventas_Natural_Range : Array_Natural := (4.5,3.4);
   Ventas_Integer_Range : Array_Integer := (6.7, 2.3);


   --  Put_Line("Primera Posicion (Positive range <>) " & Ventas'First'Image);
   --  Put_Line("Primera Posicion (Natural range <>) " & Ventas_Natural_Range'First'Image);
   --  Put_Line("Primera Posicion (Integer range <>) " & Ventas_Integer_Range'First'Image);

   --  declare
   --     --declarar un array de float(abierto)(1...N)
   --     type Array_Float is array(Positive range <>) of Float;--BIEN
   --
   --
   --     --declarar una funcion que recibe un numero y me devuelve un array de numeros al azar de N posiciones
   --     function Array_Al_Azar (Maximo : in Integer) return Array_Float is --BIEN!
   --        Random_Array: Array_Float(1..Maximo);
   --        G:Generator;
   --        Numero:Float;
   --     begin
   --        for I in Random_Array'Range loop
   --           Numero:=Random(G)*10.0+1.0;
   --           Random_Array(I):=Numero;
   --        end loop;
   --
   --        return Random_Array;
   --     end Array_Al_Azar;
   --
   --     --declarar una funcion que recibe un array de este tipo y devuelve la suma de todos ellos
   --     function Sumatorio_Array (Random_Array: in Array_Float) return Float is
   --        Resultado: Float:=0.0;
   --     begin
   --        for I in Random_Array'Range loop
   --           Resultado:=Resultado+Random_Array(I);
   --        end loop;
   --        return Resultado;
   --     end Sumatorio_Array;
   --
   --     --declarar una funcion que recibe un array de este tipo y devuelve la media de todos ellos
   --     function Media_Array(Random_Array: in Array_Float) return Float is
   --        Media:Float:=0.0;
   --     begin
   --        Media:=Sumatorio_Array(Random_Array)/Float(Random_Array'Length);
   --        return Media;
   --     end;
   --
      --Procedimiento que muestra el array por pantalla
      --  procedure Imprime_Array(Random_Array: in Array_Float) is
      --  begin
      --     for I in Random_Array'Range loop
      --        Put(Random_Array(I),0,2,0);
      --        Put_Line("");
      --     end loop;
      --
      --  end Imprime_Array;
      --
      --  --Una funcion que reciba un array y un valor y devuelve otro array con los valores mayores que el parámetro
      --  function Mayores(Arreglo : Array_Float; Valor:Float)return Array_Float is
      --     --Result: Array_Float(1..0);--Array vacío
      --     Aux: Array_Float:=Arreglo;--COPIAR ARRAY PARA QUE TENGA LA MISMA LONGITUD
      --     --  subtype Tipo_Indice is Integer range Arreglo'Range;
      --     --  Indice:Tipo_Indice:=Arreglo'First;
      --     Indice:Integer:=Arreglo'First;
      --  begin
      --     for I in Arreglo'Range loop
      --        if(Arreglo(I)>Valor) then
      --           Aux(Indice):=Arreglo(I);
      --           Indice:=Indice+1;
      --        end if;
      --
      --     end loop;
      --
      --     declare
      --        Result : Array_Float(Arreglo'First..Indice-1);--DECLARAMOS PORQUE PUEDE QUEDAR VACIO
      --     begin
      --        Result:=Aux(Arreglo'First..Indice-1);
      --        return Result;
      --     end;
      --
      --  end Mayores;
      --
      --
      Numeros: Array_Float:= Array_Al_Azar(10);
      Sumatorio:Float:=Sumatorio_Array(Numeros);
      Media:Float:=Media_Array(Numeros);
   begin

      Put_Line("ARRAY ALEATORIO");
      --  for I in reverse Numeros'Range loop
      --     Put(Numeros(I),0,2,0);
      --     Put_Line("");
      --  end loop;
      Imprime_Array(Numeros);

      Put_Line("SUMATORIO");
      Put(Sumatorio,0,2,0);
      Put_Line("");

      Put_Line("MEDIA");
      Put(Media,0,2,0);
      Put_Line("");

      declare
         Mayores_A_Cinco:Array_Float:= Mayores(Numeros,5.0);
   begin
         Put_Line("Los mayores que 5 son : ");
         Imprime_Array(Mayores_A_Cinco);
   end;

end Main;
