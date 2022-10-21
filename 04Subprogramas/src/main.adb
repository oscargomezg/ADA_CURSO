with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO;use Ada.Float_Text_IO;
procedure Main is

   --CREACION DE UNA FUNCION
   function Sumar (N1:Integer; N2:Integer) return Integer is

   begin
      return N1+N2;
   end;

   function Exponente(Base:Integer; Exponente:Integer:=2) return Float is
      Resultado:Float;
   begin
      if(Exponente=0) then
         return 1.0;
      elsif(Exponente=1)then
         return Float(Base);
      else
         Resultado:=Float(Base);
         for I in 2..Exponente loop
            Resultado:=Resultado*Float(Base);
         end loop;
         return Float(Resultado);

      end if;
   end Exponente;

   procedure Show_float(Value:Float) is
      use Ada.Float_Text_IO;
      use Ada.Text_IO;
   begin
      Put(Value,Exp=>0,Fore=>0);
      Put_Line("");
   end;

   procedure Put_Line(Value:Float) renames Show_float;

   procedure Swap_Integer(Param1: in out Integer; Param2: in out Integer) is
      Aux:Integer;
   begin
      Aux:=Param1;
      Param1:=Param2;
      Param2:=Aux;
   end Swap_Integer;

   function Resta
     (Izquierda:in Integer;
      Derecha:in Integer;
      Negativo: out boolean) return Integer is
      Resultado:Integer;
   begin
      Resultado:=Izquierda-Derecha;
      Negativo:=(Resultado<0);
      return Resultado;
   end Resta;


   function Resta
     (Izquierda: in Integer;
      Derecha:in Integer) return Integer is

   begin
      return Izquierda-Derecha;

   end Resta;

   procedure Mayor_Menor(Parametro1: in Integer;
                         Parametro2: in Integer;
                         Mayor: out Integer;
                         Menor:out Integer) is
   begin
      --  if(Parametro1>Parametro2) then
      --     Mayor:=Parametro1;
      --     Menor:=Parametro2;
      --  elsif(Parametro1<Parametro2)then
      --     Menor:=Parametro1;
      --     Mayor:=Parametro2;
      --  else
      --     Menor:=Parametro1;
      --     Mayor:=Parametro2;
      --end if;
      Mayor:=(if(Parametro1>Parametro2) then Parametro1 else Parametro2);
      Menor:=(if(Parametro1<Parametro2) then Parametro1 else Parametro2);


   end Mayor_Menor;

   --  Primer_Valor:Integer;
   --  Segundo_Valor:integer;
   --  Resultado:Integer;
begin
   --  Primer_Valor:=6;
   --  Segundo_Valor:=9;
   --  Resultado:=Sumar(Primer_Valor,Segundo_Valor); --INVOCAR A LA FUNCION CON LOS VALORES
   --  Put_Line("El resultado de sumar" & Primer_Valor'Image & " y " & Segundo_Valor'Image & " es " & Resultado'Image);
   --
   --
   --  Resultado:=Sumar(N2=>Primer_Valor,
   --                   N1=>Segundo_Valor); --INVOCAR A LA FUNCION CON LOS VALORES
   --  Put_Line("El resultado de sumar" & Primer_Valor'Image & " y " & Segundo_Valor'Image & " es " & Resultado'Image);
   --  declare
   --    Res:Float;
   --  begin
   --     --CON PARAMETRO POR DEFECTO
   --     Res:=Exponente(2);
   --     --Show_Floar(Res);
   --     Put_Line(Res);
   --
   --
   --     --SIN PARAMETRO POR DEFECTO
   --     Res:=Exponente(Base=>2,Exponente=>3);--SI ESPECIFICAMOS EL VALOR DE CADA ATRIBUTO DEL MÉTODO, SE PUEDEN PONER DE FORMA DESORDENADA
   --     --Show_float(Res);
   --     Put_Line(Res);

   --  declare
   --     A:Integer:=10;
   --     B:Integer:=20;
   --  begin
   --     --Swap_Integer(2,3);--NO FUNCIONA, NECESITA VARIABLES AL SER IN OUT EN EL METODO
   --     Put_Line("Antes:" & A'Image & B'Image);
   --     Swap_Integer(A,B);
   --     Put_Line("Despues:" & A'Image & B'Image);
   --  end;

   --  declare
   --     A:Integer:=10;
   --     B:Integer:=20;
   --     Resultado:Integer;
   --     Negativo:Boolean;
   --  begin
   --     --RESTA
   --     Put(Resta(40,30)'Image);
   --     Put_Line("");
   --     --Sobrecarga
   --     Resultado:=Resta(A,B,Negativo);
   --     Put_Line("Resultado "& Resultado'Image & (if(Negativo)then " es negativo" else "es positivo"));
   --  end;

   --REALIZAR EL PROCEDIMIENTO MAYORMENOR QUE RECIBA DOS NUMEROS Y DEVUELVA DOS VARIABLES, UNA CON EL MAYOR Y OTRA CON EL MEJOR
   --POSEE 4 PARAMETROS
   declare
      A:Integer:=20;
      B:Integer:=15;
      Mayor:Integer;
      Menor:Integer;
   begin
      Mayor_Menor(A,B,Mayor,Menor);
      Put_Line("El parametro " & Mayor'Image & " es mayor que el parametro " & Menor'Image);
   end;



end Main;
