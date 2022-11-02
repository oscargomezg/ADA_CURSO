package body personajes is
   
   function Create (Nombre:String) return Campeon is
      Result: Campeon;
   begin
      Result:=new Clase_Campeon;
      Result.Nombre:=To_Unbounded_String(Nombre);
      Result.Hp:=1;
      Result.Experiencia:=0;
      Result.Nivel:=0;
      return Result;
   end;
   

   function To_String(This:Clase_Campeon) return String is
      
   begin
      return "Soy el campeon " &
        To_String(This.Nombre) &
        " (HP : " & This.Hp'Image & ", " 
        & "Nivel : " & This.Nivel'Image & ")";
   end To_String;
   
   
   function Get_Nombre(This:Clase_Campeon) return String is 
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   
   function Get_Nivel(This:Clase_Campeon) return Niveles is
   begin
      return This.Nivel;
   end Get_Nivel;
   

end personajes;
