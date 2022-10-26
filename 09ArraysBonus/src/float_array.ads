with Ada.Text_IO;use Ada.Text_IO;
with Ada.Numerics.Float_Random;use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Float_Array;use Float_Array;
package Float_Array is

  
      --declarar un array de float(abierto)(1...N)
      type Array_Float is array(Positive range <>) of Float;--BIEN
      
      
      --declarar una funcion que recibe un numero y me devuelve un array de numeros al azar de N posiciones
      function Array_Al_Azar (Maximo : in Integer) return Array_Float;
      
      --declarar una funcion que recibe un array de este tipo y devuelve la suma de todos ellos
      function Sumatorio_Array (Random_Array: in Array_Float) return Float;
      
      --declarar una funcion que recibe un array de este tipo y devuelve la media de todos ellos
      function Media_Array(Random_Array: in Array_Float) return Float;
      
      --Procedimiento que muestra el array por pantalla
      procedure Imprime_Array(Random_Array: in Array_Float);
      
      --Una funcion que reciba un array y un valor y devuelve otro array con los valores mayores que el parámetro
      function Mayores(Arreglo : Array_Float; Valor:Float)return Array_Float;

end Float_Array;
