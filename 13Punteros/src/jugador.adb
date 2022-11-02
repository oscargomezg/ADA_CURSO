with IO; use IO;
with Ada.Float_Text_IO;use Ada.Float_Text_IO;
with Ada.Text_IO;use Ada.Text_IO;
with Jugador;use Jugador;
with Ada.Strings.Unbounded;use Ada.Strings.Unbounded;
with Ada.Characters.Handling;use Ada.Characters.Handling;

package body Jugador is
   
   function To_String(Value: in Jugador_Juego) return String is
      --Retorno:String;
   begin
      --Retorno
      return (To_String(Value.Profesion) & " " & To_String(Value.Nombre) &
        "(HP :" &Value.Hp'Image &
        ", Nivel: "& Value.Nivel'Image & ")"); 
   end To_String;
   
   function To_String(Value: in Profesiones) return String is
   begin
      return To_Upper(Value'Image(1..1)) & To_Lower(Value'Image(2.. Value'Image'Length));
   end To_String;
   

   
end Jugador;
