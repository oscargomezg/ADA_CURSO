with personajes;use personajes;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;use Ada.Text_IO;
procedure Main is

   Khazix:Campeon;
begin

   --  Khazix:=new Clase_Campeon;
   --  Khazix.Nombre:=To_Unbounded_String("Khazix");
   --  Khazix.Nivel:=1;
   --  Khazix.Experiencia:=0;
   --


   Khazix:=Create("Khazix");
   Put_Line(Khazix.To_String);
   Put_Line("Probando los Getters");
   Put_Line("Nombre : " & Khazix.Get_Nombre);
   Put_Line("Nivel : " & Khazix.Get_Nivel'Image);
end Main;
