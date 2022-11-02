with Ada.Text_IO;use Ada.Text_IO;
with Generic_Demo; use Generic_Demo;
procedure Main is
   Default_Max_Jugadores: constant Integer:=23;
   Default_Min_Jugadores: constant Integer:=11;

   type Equipos is(Real_Madrid, Barsa, Betis, Villarreal, Getafe, Atletico);
   type Cantidad_Jugadores is new Integer range Default_Min_Jugadores..Default_Max_Jugadores;
   type Sueldo is range 0..2**40;
   type Metros_Segundo is delta 0.001 digits 4;--MARCA DIFERENCIA MINIMA ENTRE NUMEROS DE 0.001

   C1:Cantidad_Jugadores;
   C2:Cantidad_Jugadores;

   Equipo_Favorito: Equipos;
   Equipo_Odiado:Equipos;

   NumeroA:Natural;
   NumeroB:Natural;

   Sueldo_Messi:Sueldo;
   Sueldo_Tesla:Sueldo;

   Velocidad_Inicial:Metros_Segundo;
   Velocidad_Final:Metros_Segundo;

   --GENERICOS



   --  procedure Swap_Cantidad_Jugadores (Cantidad_Equipo1: in out Cantidad_Jugadores;Cantidad_Equipo2:in out Cantidad_Jugadores) is
   --     Aux:Cantidad_Jugadores;
   --  begin
   --     Aux:=Cantidad_Equipo1;
   --     Cantidad_Equipo1:=Cantidad_Equipo2;
   --     Cantidad_Equipo2:=Aux;
   --  end Swap_Cantidad_Jugadores;
   --
   --  procedure Swap_Equipos (Equipo1: in out Equipos;Equipo2:in out Equipos) is
   --     Aux:Equipos;
   --  begin
   --     Aux:=Equipo1;
   --     Equipo1:=Equipo2;
   --     Equipo2:=Aux;
   --  end Swap_Equipos;

   procedure Swap is new Generic_Swap(T=>Cantidad_Jugadores);
   procedure Swap is new Generic_Swap(T=>Equipos);
   procedure Swap is new Generic_Swap(T=>Natural);



begin

   C1:=23;
   C2:=15;
   Put_Line("Antes("&C1'Image & "," &C2'Image &")");
   Swap_Cantidad_Jugadores(C1,C2);
   Put_Line("Antes("&C1'Image & "," &C2'Image &")");

   Equipo_Odiado:=Real_Madrid;
   Equipo_Favorito:=Barsa;



end Main;
