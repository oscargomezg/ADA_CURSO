with selva;use selva;
with Ada.Text_IO;use Ada.Text_IO;
with io;use io;
with Ada.Numerics.Float_Random;use Ada.Numerics.Float_Random;
procedure Main is
   --Un_Animal:Animal;
   --Jirafa:Animal


begin
   --  Un_Animal:=Create_Leon("Alex");
   --  Put_Line("Hola soy " & Get_Nombre(Un_Animal));
   --  Un_Animal.Hablar;

   declare
      Numero_Animales:Integer:=Get_Integer("Cuantos animales desea crear?");
      type Array_Animales is array (Natural range <>) of Animal;
      Animales:Array_Animales;
      G:Generator;
      Azar:Uniformly_Distributed;
      Un_Animal:Animal;
   begin

      Reset(G);
      for Index in Array_Animales'Range loop
         Azar:=Random(G);

         if(Azar<0.3) then
            Animales(Index):=Create_Leon(Get_NotEmpty_Line("Intorduzca nombre del leon"));
            Animales(Index).Hablar;
         elsif Azar>0.7 then
                                            Animales(Index):=Create_Jirafa(Get_NotEmpty_Line("Intorduzca nombre de la jirafa"));
                                           Animales(Index).Hablar;
         else
                                              Animales(Index):=Create_Zorro(Get_NotEmpty_Line("Intorduzca nombre de la jirafa"));
                                             Animales(Index).Hablar;
         end if;

      end loop;

   end;


end Main;
