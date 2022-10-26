with Ada.Text_IO;use Ada.Text_IO;
with Ada.Strings.Unbounded;use Ada.Strings.Unbounded;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
procedure Main is
type Persona is record
      Nombre:String;
      Apellido:String;
      Edad:Integer range 1..150;

   end record;

   type Array_Personas is array (Positive range<>) of Persona;
   Numero_Personas:Integer;

   function Leer_Integer() is
      Numero_Personas:Integer;
      loop
         Put_Line("Introduce numero");
         Get(Numero_Personas);
      exception
            others=>Put_Line("No has introducido un numero");
      end exception;
         return Numero_Personas;
      end loop;
   end Leer_Integer;

begin
   Put_Line("Cuántas personas desea introducir?");


   null;
end Main;
