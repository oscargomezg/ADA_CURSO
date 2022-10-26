package body helper is

   type Persona is record
      Nombre:String;
      Apellido:String;
      Edad:Integer range 1..150;
      
      end record;

end helper;
