with Ada.Text_IO;use Ada.Text_IO;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
procedure Main is
N:Integer:=0;
begin
   Put_Line("Hola buenos días");
   --BUCLE FOR:
   --  for I in 1..10 loop
   --     Put_Line(I'Image);
   --     end loop;

   --JUGANDO...
   --  N:=10;
   --  Put_Line(N'Image);
   --  Put_Line(Integer'Succ(N)'Image);
   --  Put_Line(Integer'Pred(N)'Image);
   --
   --  if (N mod 2 = 0) then
   --     Put_Line("El número es par");
   --end if;
   --FOR QUE LISTE NUMEROS DEL 1 AL 20
   --  for I in 1..20 loop
   --     if(I mod 2=0) then
   --        Put_Line(I'Image);
   --        end if;
   --     end loop;

   --SUMATORIO DE VALORES ENTRE 1 Y 15
   --  for I in 1..15 loop
   --     N:=N+I;
   --     end loop;
   --  Put_Line(N'Image);

   --MEDIA DE VALORES DADOS POR EL USUARIO
   declare

      SumaTotal:Integer:=0;
      Teclado:Integer;
      Media:Float;

   begin

      for I in 1..10 loop
         Put_Line("Ingrese un Numero");
         Get(Teclado);
         SumaTotal:=SumaTotal+Teclado;
      end loop;

      Media:=Float(SumaTotal)/10.0;
      Put_Line("La media es : " & Media'Image);

   end;

end Main;
