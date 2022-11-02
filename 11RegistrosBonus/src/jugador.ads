with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Characters.Conversions;use Ada.Characters.Conversions;
package Jugador is

   Default_Max_Hp:constant Integer:=1000;
   Default_Max_Level:constant Integer:=20;
   
   type Profesiones is (Guerrero, Mago, Sanador, Asesino, Ninja);
   type Niveles is range 1..Default_Max_Level with Default_Value=>1;
   type Vida is range 0..Default_Max_Hp;
   
   type Jugador_Juego is record
      Nombre: Unbounded_String;
      Profesion:Profesiones;
      Nivel:Niveles;
      Hp:Vida;
   end record;
   
   type Jugadores is array (Positive range <>) of Jugador_Juego;
   
   function To_String(Value: in Jugador_Juego) return String;

   function To_String(Value: in Profesiones) return String;
end Jugador;
