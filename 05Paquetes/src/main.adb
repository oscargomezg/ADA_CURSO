with Constantes;use Constantes;
with Ada.Text_IO;use Ada.Text_IO;
with io;use io;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
procedure Main is


begin

   Put_Line(Constantes.Titulo);
   Put_Line("Version " & Constantes.Version'Image);
   New_Line(2);
   Put_Line("Ingrese su nombre");

   declare
      Nombre:String:=Get_NotEmpty_Line;
   begin
      Put_Line("Hola " & Nombre);
      end;


   declare
      Edad:Integer;
   begin
      Put_Line("Ingrese su edad");
      Edad:=Get_Integer;

      Put_Line("Edad " & Edad'Image);



   end;

end Main;
