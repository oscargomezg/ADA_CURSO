with Ada.Text_IO;use Ada.Text_IO;
with Ada.Float_Text_IO;use Ada.Float_Text_IO;
with Magnitudes;use Magnitudes;
procedure Main is

   Metros:Distancia;
   Segundos:Tiempo;
   Metros_Segundo:Velocidad;
   Metros_Segundo_Cuadrado:Aceleracion;
   Metros_Recorridos:Distancia;

begin
   --  CREAR LIBRERIA LLAMADA FISICA
   --DEFINIR TIPOS DE DATO EN ESA LIBRERIA
   --DISTANCIA
   --TIEMPO
   --VELOCIDAD
   --ACELERACION
   --AGREGAR UN METODO QUE CALCULA LA POSICION DE UN MOVIL DESPUES DE X TIEMPO
   --XF=X0+Vinicial*t+1/2+a*t^2
   Put_Line("Introduzca la distancia inicial");
   Get(Metros);
   Put_Line("Introduzca tiempo transcurrido");
   Get(Segundos);
   Put_Line("Introduzca la aceleracion");
   Get(Metros_Segundo_Cuadrado);
   Put_Line("Introduzca la velocidad inicial");
   Get(Metros_Segundo);

   Metros_Recorridos:=Calcula_Posicion_MRUA(Metros,Metros_Segundo,Segundos,Metros_Segundo_Cuadrado);

   Put_Line("Ha recorrido : " & Metros_Recorridos'Image);

   null;
end Main;
