with Ada.Text_IO;use Ada.Text_IO;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Float_Random;use Ada.Numerics.Float_Random;
procedure Main is
   --  SumaTotal : Integer:=0;
   --  Teclado: Integer;
begin

   --CALCULAR LA SUMA DE VALORES HASTA QUE EL USUARIO INGRESE UN 0
   --  Put_Line("Ingresa valores. 0 para acabar");
   --  Put_Line("Se calculara la suma");
   --  loop
   --     Get(Teclado);
   --     exit when (Teclado=0);
   --     SumaTotal:=SumaTotal+Teclado;
   --  end loop;
   --
   --  Put_Line("La suma total es igual a " & SumaTotal'Image);

   --WHILE
   --  Put_Line("Ingresa valores. 0 para acabar");
   --  Put_Line("Se calculara la suma");
   --  Get(Teclado);
   --  while (Teclado /=0) loop
   --     SumaTotal:=SumaTotal+Teclado;
   --     Get(Teclado);
   --  end loop;
   --  Put_Line("La suma total es de " & SumaTotal'Image);

   --  declare
   --     Edad:Integer;
   --
   --  begin
   --     Put_Line("Ingrese su edad");
   --     Get(Edad);
   --
   --     case Edad is
   --        when 0|1|2=>
   --           Put_Line("Es un recién nacido");
   --        when 3..9=>
   --           Put_Line("Es un niño");
   --        when 10..18 =>
   --           Put_Line("Es un joven");
   --        when 19..49=>
   --           Put_Line("Es un adulto");
   --        when 50=>
   --           Put_Line("Medio siglo de vida.");
   --        when others=>
   --           Put_Line("Mayor de 50 años.");
   --     end case;
   --
   --  end;

   --STRINGS
   --FORMA EXPLICITA DE DECLARAR UN STRING
   --  declare
   --     S:String(1..5);
   --  begin
   --     S:="Oscar";
   --     Put_Line(S);
   --  end;

   --FORMA IMPLICITA DE DECLARAR UN STRING
   --  Put_Line("Ingresa tu nombre");
   --  declare
   --     Nombre:String:=Get_Line;
   --  begin
   --     Put_Line("Hola " & Nombre);
   --
   --  end;

   --PROGRAMA QUE PREGUNTE VALORES POSITIVOS HASTA QUE SE INGRESE UN 0
   --EL PROGRAMA MUESTRA EL MAXIMO

   --  Put_Line("Ingresa un número, 0 para salir");
   --  declare
   --     Numero:Integer;
   --     Maximo :Integer:=0;
   --  begin
   --     Get(Numero);
   --     while(Numero /=0) loop
   --        if Numero<0 then
   --           Put_Line("Introduce un positivo");
   --        end if;
   --        if(Numero>Maximo) then
   --           Maximo:=Numero;
   --        end if;
   --
   --        Get(Numero);
   --     end loop;
   --     Put_Line("El maximo es " & Maximo'Image);
   --     end;

   --OPERADOR TERNARIO (ESTRUCTURAS DE CONTROL)
   --  declare
   --     Edad:Integer;
   --  begin
   --     Put_Line("Introduzca su edad");
   --     Get(Edad);
   --  if(Edad>=18)then
   --     Put_Line("Es Mayor");
   --  else
   --     Put_Line("Es Menor");
   --  end if;
   --
   --  Put_Line(if(Edad>=18) then "Es Mayor" else "Es menor");
   --     Put_Line(case Edad is
   --                 when 0..17=>"Es menor",
   --                 when 18..60=>"Es mayor",
   --                 when others =>"Es un señor");
   --  end;
   --

   --USUARIO INGRESE NUMEROS Y QUE CALCULE EL TOTAL DE NUMEROS INGRESADOR, CANTIDAD DE PARES, CANTIDAD IMPARES

   --  declare
   --     Numero:Integer;
   --     ContadorNumeros:Integer:=0;
   --     ContadorPares:Integer:=0;
   --     ContadorImpares:Integer:=0;
   --  begin
   --     Put_Line("Ingrese un numero");
   --     Get(Numero);
   --
   --     while(Numero /=0) loop
   --        ContadorNumeros:=ContadorNumeros+1;
   --        --  if(Numero mod 2 =0) then
   --        --     ContadorPares:=ContadorPares+1;
   --        --  else
   --        --     ContadorImpares:=ContadorImpares+1;
   --        --  end if;
   --        --  Put_Line("Ingrese un numero");
   --        --  Get(Numero);
   --        ContadorPares:=ContadorPares+(if(Numero mod 2 =0)then 1 else 0);
   --        ContadorImpares:=ContadorImpares+(if(Numero mod 2 =1)then 1 else 0);
   --        Put_Line("Ingrese un numero");
   --        Get(Numero);
   --     end loop;
   --     Put_Line("La cantidad de numeros es de " & ContadorNumeros'Image);
   --     Put_Line("La cantidad de numeros pares es de " & ContadorPares'Image);
   --     Put_Line("La cantidad de numeros impares es de " & ContadorImpares'Image);
   --  end;

   --GENERADOR ALEATORIOS
   --  declare
   --     G:Generator;
   --     NumeroAleatorio:Uniformly_Distributed;
   --  begin
   --     Reset(G);
   --     for I in 1..10 loop
   --        NumeroAleatorio:=Random(G);
   --        Put(NumeroAleatorio,0,2,0);
   --        Put_Line("");
   --        end loop;
   --  end;


   --GENERADOR DE ENTEROS ALEATORIOS ENTRE 1 Y 10
   declare
      G:Generator;
      NumerosAleatorios:Integer;

   begin
      Reset(G);
      for I in 1..20 loop
         NumerosAleatorios:=Integer(Random(G) * 9.0)+1;
         Put_Line(NumerosAleatorios'Image);
         end loop;
   end;


end Main;
