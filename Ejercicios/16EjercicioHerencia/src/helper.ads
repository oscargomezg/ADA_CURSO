package Helper is

   type Clase_Figuras is abstract tagged private;
   type Figuras is access Clase_Figuras'Class;
   
   
   type Clase_Rectangulo is new Clase_Figuras with private;
   function Create_Clase_Rectangulo return Figuras;
   
   type Clase_Circulo is new Clase_Figuras with private;
   function Create_Clase_Circulo return Figuras;
   type Lado is new Float;
   type Altura is new Float;
   
   private
   type Clase_Figuras is abstract tagged record
      Longitud:Lado;
   end record;
   
   function Get_Lado(This:Clase_Figuras) return Lado;
   
   type Clase_Rectangulo is new Clase_Figuras with record
      H:Altura;
   end record;
   
   function Get_Altura (This:Clase_Rectangulo) return Altura;
   
   function Area_Rectangulo (This:Clase_Rectangulo) return Float;
   
   type function Clase_Circulo is new Clase_Figuras with record
      PI:Float:=3.1416
   end record;
   
   function Area_Circulo (This:Clase_Circulo) return Float;
   

end Helper;
