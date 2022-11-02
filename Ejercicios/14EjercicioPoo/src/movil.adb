package body movil is

   function To_String(This:Avion) return String
   begin
        return "Avion con posicion X " & This.Posicion_X'Image & " Posicion Y " & This.Posicion_Y'Image &
        " Velocidad X es " & This.Velocidad_X & " Velocidad Y es igual a " & This.Posicion_X'Image;
   end To_String;
   
   function Get_Posicion_X(This:Avion);

end movil;
