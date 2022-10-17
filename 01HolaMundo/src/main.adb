with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;use Ada.Strings.Unbounded;
with Ada.Text_IO.Unbounded_IO;use Ada.Text_IO.Unbounded_IO;
procedure Main is
   N:Integer;
   Edad:Integer:=0;--OJO: ES MEJOR ACOTAR EL RANGO QUE PUEDEN TENER LAS VARIABLES
   Nombre:Unbounded_String;
begin
   --MOSTRAR MENSAJE POR PANTALLA
   --  Ada.Text_IO.Put_Line("Hola Mundo, Ada");
   --  Ada.Text_IO.Put_Line("Bienvenidos a un nuevo lenguaje de programación");

   --UNA VEZ PUESTO EL USE, NO ES NECESARIO PONER EL NOMBRE DE LA LIBRERIA
   --  Put_Line("Hola Mundo");
   --  Put_Line("Bienvenidos a un nuevo lenguaje de programacion");

   --DECLARAR VARIABLES
   N:=10;
   --Put_Line(N'Image);
   --Put(N);
   --Put(N, Width=>2);
   --Put(Item =>N, Width=>2, Base=>16);
   --  Put_Line("Ingrese un número");
   --  Get(N);
   --  Put(N);

   --ESTRUCTURAS DE CONTROL (IF-ELSE):
   --  Put_Line("Ingrese su edad");
   --  Get(Edad);
   --  if Edad >= 18 then
   --     Put_Line("Eres mayor de edad");
   --     end if;
   --  if Edad >= 18 then
   --     Put_Line("Es mayor de de edad");
   --  else
   --     Put_Line("Es menor de edad");
   --     end if;
   --
   --  if Edad <18 then
   --     Put_Line("Es menor de edad");
   --  elsif Edad in 18..70 then
   --     Put_Line("Es adulto");
   --  else
   --     Put_Line("Es un jubilado");
   --  end if;


   --  if Edad >= 18 then
   --     Put_Line("Eres mayor de edad");
   --     end if;
   --  if Edad >= 18 then
   --     Put_Line("Es mayor de de edad");
   --  else
   --     Put_Line("Es menor de edad");
   --     end if;
   Put_Line("Ingresa su nombre");
   Get_Line(Nombre);
   Put_Line("Ingrese su edad");
   Get(Edad);

   Put_Line("Hola " & Nombre);

   if Edad <18 then
      Put_Line("Eres menor de edad");
   elsif Edad in 18..70 then
      Put_Line("Eres adulto");
   else
      Put_Line("Eres un jubilado");
   end if;
end Main;
