with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
with Ada.Text_IO;use Ada.Text_IO;
with Ada.Numerics.Float_Random;use Ada.Numerics.Float_Random;
procedure Main is
   G:Generator;
   NumeroGenerado:Integer;
   NumeroUsuario:Integer;
   ContadorIntentos:Integer:=0;
   MaximoIntentos:constant Integer:=5;
begin
   --EL ORDENADOR GENERA UN NUMERO AL AZAR ENTRE 1 Y 100
   --ORDENADRO DA 5 OPORTUNIDADES AL USUARIO PARA ADIVINAR EL NUMERO
   --EL USUARIO INTRODUCE UN NUMERO Y MUESTRA SI EL NUMERO ES MAYOR O MENOR
   --SI EL USUARIO ADIVINA, GANA, SINO, PIERDE
   Reset(G);
   NumeroGenerado:=Integer(Random(G)*99.0)+1;

   loop
    Put_Line("Introduzca numero");
    Get(NumeroUsuario);

      if(NumeroUsuario=NumeroGenerado)then
         Put_Line("HA ACERTADO, ENHORABUENA");
      elsif(NumeroUsuario>NumeroGenerado)then
         Put_Line("El numero introducido es MAYOR al de la máquina");
      else
         Put_Line("El numero introducido es MENOR al de la máquina");
      end if;

      ContadorIntentos:=ContadorIntentos+1;
      exit when (ContadorIntentos=MaximoIntentos)or(NumeroUsuario=NumeroGenerado);

   end loop;
   Put_Line("El numero de la maquina era el : " & NumeroGenerado'Image);

end Main;
