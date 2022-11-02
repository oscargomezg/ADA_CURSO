with Ada.Text_IO;use Ada.Text_IO;
with IO; use IO;
generic
   type Enum_Type is(<>);
package IO_enums is

   function Try_Get_Enum (Enum:out Enum_Type) return Boolean;
   function Get_Enum(Prompt:String:="";
                     Error_Message:String:="Entrada invalida. Reintente")
                     return Enum_Type;
   
   

end IO_enums;
