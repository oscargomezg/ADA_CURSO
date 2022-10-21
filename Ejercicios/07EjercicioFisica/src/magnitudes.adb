package body Magnitudes is

   --  subtype Distancia is Float;
   --  subtype Velocidad is Float;
   --  subtype Tiempo is Float;
   --  subtype Aceleracion is Float;
   
   function Calcula_Posicion_MRUA
     (Posicion_Inicial:in Distancia;
      Velocidad_Inicial:in Velocidad;
      Tiempo_Transcurrido:in Tiempo;
      Aceleracion_Lineal:in Aceleracion) return Distancia is
      
      begin
      return(Posicion_Inicial+(Velocidad_Inicial*Tiempo_Transcurrido**2)+((1.00/2.00*Aceleracion_Lineal)*(Tiempo_Transcurrido**2)));
   
      end Calcula_Posicion_MRUA;
end Magnitudes;
