package movil is

   type Posicion_X is Float;
   type Posicion_Y is Float;
   type Velocidad_X is Float;
   type Velocidad_Y is Float;
   
   type Avion is tagged private;
   type Avion is tagged record
      Posicion_X:=0.0;
      Posicion_Y:=0.0;
      Velocidad_X:=0.0;
      Velocidad_Y:=0.0;
   end record;
   type 
   
   function Get_Posicion_X(This:Avion) return Float;
   function Get_Posicion_Y(This:Avion) return Float;
   function Get_Velocidad_X(This:Avion) return Float;
   function Get_Velocidad_Y(This:Avion) return Float;
   
   function To_String(This:Avion) return String;
   
   function ActualizarPosicion(This:Avion;Tiempo:Float) return Avion;
end movil;
