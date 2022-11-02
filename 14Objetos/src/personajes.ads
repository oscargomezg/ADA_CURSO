with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;use Ada.Text_IO;

package personajes is
   type Vida is new Integer range 0..1000;
   type Niveles is new Integer range 0..20;
   type Puntos_Experiencia is new Integer range 0..2000;
   --type Campeon is tagged private;
   
   type Clase_Campeon is tagged record
      Nombre:Unbounded_String;
      Hp:Vida:=1000;
      Nivel:Niveles;
      Experiencia:Puntos_Experiencia:=0;
   end record;
   
   type Campeon is access Clase_Campeon;
   --METODOS DE LA CLASE CAMPEON
   function To_String (This:Clase_Campeon) return String;
   
   --CONSTRUCTOR
   function Create(Nombre:String) return Campeon;

   --GETTER Y SETTER
   --GETTER
   function Get_Nombre(This:Clase_Campeon) return String;
   function Get_Nivel (This:Clase_Campeon) return Niveles;
end personajes;
