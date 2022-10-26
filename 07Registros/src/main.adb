with Ada.Strings.Unbounded;use Ada.Strings.Unbounded;
with Ada.Text_IO;use Ada.Text_IO;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
procedure Main is
   type Edad is range 0..150;

   Nombre:Unbounded_String;
   Apellido: Unbounded_String;
   Edad_Persona:Edad;

   type Persona is record
      Nombre:Unbounded_String;
      Apellido: Unbounded_String;
      Edad_Persona:Edad;
   end record;

   Una_
begin

   Put_Line("Cual es su nombre?");
   Nombre:=To_Unbounded_String(Get_Line);

   Put_Line("Cual es su apellido?");
   Apellido:=To_Unbounded_String(Get_Line);

   Put_Line("Cual es su edad?");
   Edad_Persona:=Edad(Integer'Value(Get_Line));

   Put_Line("Hola " & To_String(Nombre)
            & " " & To_String(Apellido)
            & " de " & Edad_Persona'Image
            & " años");
end Main;
