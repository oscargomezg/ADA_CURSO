package Magnitudes is

   subtype Distancia is Float;
   subtype Velocidad is Float;
   subtype Tiempo is Float;
   subtype Aceleracion is Float;
   
   function Calcula_Posicion_MRUA
     (Posicion_Inicial:in Distancia;
      Velocidad_Inicial:Velocidad;
      Tiempo_Transcurrido:Tiempo;
      Aceleracion_Lineal:Aceleracion) return Distancia;

end Magnitudes;
