
with Ada.Text_IO;use Ada.Text_IO;
with Ada.Containers.Vectors;
with io_enums;
procedure Main is

begin

--     declare
--        A:Integer;
--        B:Integer;
--        C:Integer;
--  begin
--        A:=10;
--        B:=20;
--        C:=A;
--
--        A:=40;
--        Put_Line(C'Image);

   --  declare
   --
   --     type Puntero_Integer is access Integer;
   --     PTR_A:Puntero_Integer;
   --     PTR_B:Puntero_Integer;
   --     PTR_C:Puntero_Integer;
   --
   --  begin
   --     PTR_A:=new Integer'(10);
   --     --Put_Line(PTR_A);
   --     PTR_B:=new Integer'(20);
   --     PTR_C:=PTR_A;
   --
   --     PTR_A.All:=40;
   --
   --     Put_Line(PTR_C.All'Image);
   --
   --  end;
   declare
      --DECLARAR UN REGISTRO QUE SEA UN PUNTO (X,Y)
      type Punto is record
         X:Integer;
         Y:Integer;
      end record;

      --DECLARAR UN PUNTERO A UN PUNTO

      type Puntero_Punto is access Punto;
      --DECLARAR ARRAY DE PUNTEROS DE PUNTOS

      type Array_Punteros is array(Natural range <>) of Puntero_Punto;

      --Mi_Punto:Puntero_Punto;
      --Muchos_Puntos:Array_Punteros(0..5);
      --  Punto_1:Puntero_Punto;
      --  Punto_2:Puntero_Punto;
      --  Punto_3:Puntero_Punto;
      --  Punto_4:Puntero_Punto;
      --  Punto_5:Puntero_Punto;
      package Vector_Puntos is new Ada.Containers.Vectors--ARRAYLIST DE JAVA
        (Index_Type=>Natural,
         Element_Type=>Puntero_Punto);

      Mi_Punto:Puntero_Punto;
      Muchos_Puntos:Vector_Puntos.Vector;
   begin
      --Mi_Punto:= new Punto'(X=>10, Y=>20);
      --  Punto_1:= new Punto'(10,10);
      --  Punto_2:= new Punto'(20,10);
      --  Punto_3:= new Punto'(10,20);
      --  Punto_4:= new Punto'(0,25);
      --  Punto_5:= new Punto'(25,10);
      --  Muchos_Puntos:=(Punto_1,Punto_2,Punto_3,Punto_4,Punto_5);

      --  for Index in Muchos_Puntos'Range loop
      --     Muchos_Puntos(Index):=new Punto'(index+3,index+2);
      --  end loop;
      --
      --for I in Muchos_Puntos'Range loop
         --  Mi_Punto:=Muchos_Puntos(I);
         --  Set_Col(Positive_Count(Mi_Punto.All.X));
         --  Set_Line(Positive_Count(Mi_Punto.All.Y));
         --
         --  Set_Col(Positive_Count(Mi_Punto.All.X));
         --  Set_Line(Positive_Count(Mi_Punto.All.Y));
         --  Put_Line("*");

      --     for Index in 1..10 loop
      --        Mi_Punto:=new Punto'(index+3,index+2);
      --        Muchos_Puntos.Append(Mi_Punto);
      --
      --  end loop;
      --
      --     for Punto_Actual of Muchos_Puntos loop
      --        Set_Col(Positive_Count(Punto_Actual.X));
      --        Set_Line(Positive_Count(Punto_Actual.Y));
      --        Put_Line("*");
      --     end loop;



  --end;

      --end

      declare
         Profesiones:
         begin

end;
end Main;
