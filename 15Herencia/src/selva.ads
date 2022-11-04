with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package selva is

   type Clase_Animal is abstract tagged private;
   type Animal is access Clase_Animal'Class;
   
   --CONSTRUCTORES 
   --function Create(Un_Nombre:Unbounded_String) return Animal;
   --GETTER
   procedure Hablar(This: in Clase_Animal) is abstract;
   function Get_Nombre(This:in Animal) return String;
   --SUBCLASES
   type Clase_Leon is new Clase_Animal with private;
   function Create_Leon(Un_Nombre : String) return Animal;
   overriding procedure Hablar(This: in Clase_Leon);
   
   type Clase_Jirafa is new Clase_Animal with private;
   function Create_Jirafa(Un_Nombre : String) return Animal;
   overriding procedure Hablar(This: in Clase_Jirafa);
                    
   type Clase_Zorro is new Clase_Animal with private;
   function Create_Zorro(Un_Nombre:String) return Animal;
   overriding procedure Hablar(This:in Clase_Zorro);
   
      private
      
      type Clase_Animal is abstract tagged
         record
            Nombre:Unbounded_String;
            
            
      end record;
   
   type Clase_Leon is new Clase_Animal with
      record
         null;
      end record;
   
   type Clase_Jirafa is new Clase_Animal with
      record
         null;
         
      end record;
   
   type Clase_Zorro is new Clase_Animal with
      record
         null;
         
      end record;
   

end selva;
