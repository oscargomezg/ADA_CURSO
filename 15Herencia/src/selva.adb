with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;use Ada.Text_IO;
package body selva is

   --  function Create (Un_Nombre : String) return Animal is
   --     Result:Animal:=new Clase_Animal;
   --  begin
   --     Result.Nombre:=To_Unbounded_String(Un_Nombre);
   --     return Result;
   --  end Create;
   
   function Get_Nombre(This:in Animal) return String is
      
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   
   
   
   function Create_Leon(Un_Nombre : String) return Animal is
      Result:Animal:=new Clase_Leon;
   begin
      Result.Nombre:=To_Unbounded_String(Un_Nombre);
      return Result;
   end Create_Leon;
   
   
   procedure Hablar(This: in Clase_Leon) is
      
   begin
      Put_Line("ROOOOOOOOOAAAAAAAARRRRRR");
   end Hablar;
   
   
   function Create_Jirafa(Un_Nombre : String) return Animal is
      Result:Animal:=new Clase_Jirafa;
   begin
      Result.Nombre:=To_Unbounded_String(Un_Nombre);
      return Result;
   end Create_Jirafa;
   
   
    procedure Hablar(This: in Clase_Jirafa) is
      
   begin
      Put_Line("Soy una jirafa y no tengo sonidos.");
   end Hablar;
   
   function Create_Zorro(Un_Nombre:String) return Animal is
       Result:Animal:=new Clase_Zorro;
   begin
      Result.Nombre:=To_Unbounded_String(Un_Nombre);
      return Result;
   end Create_Zorro;
   
   procedure Hablar(This: in Clase_Zorro) is
      
   begin
      Put_Line("dindindindidin");
   end Hablar;

end selva;
