package io is
   
   Default_String_Error_Message : String:= "Entrada Vacía. Vuelva a Ingresar";
   Default_Integer_Error_Message:String:="No ingreso un numero. Vuelve a intentarlo.";

   function Get_NotEmpty_Line
     (Prompt:String:="";ErrorMessage: String:=Default_String_Error_Message) return String; 
   
   function Try_Get_Integer
     (Value:out Integer)return Boolean;
   
   function Get_Integer
     (Prompt:String:=""; ErrorMessage:String:=Default_Integer_Error_Message)return Integer;

end io;
