with Ada.Text_IO;use Ada.Text_IO;
with Ada.Strings.Fixed;use Ada.Strings.Fixed;
with Ada.Strings; use Ada.Strings;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
package body io is

   function Get_NotEmpty_Line
     (ErrorMessage: String:="Entrada Vacía. Vuelva a Ingresar") return String is
      
   begin
      
      loop
         declare
            Entrada:String:=Get_Line;
         begin
            declare 
               Entrada_Sin_Espacios:String:=Trim(Entrada,Both);
            begin
               if(Entrada_Sin_Espacios'Length>0)then
                  return Entrada_Sin_Espacios;
                  end if;
            end;
         end;
            Put_Line(ErrorMessage);
            
      end loop;
         --return Entrada;
         
   end Get_NotEmpty_Line;
   
function Try_Get_Integer
     (Value:out Integer)return Boolean is
      begin
      		Value:=Integer'Value(Get_Line);
      		
      return True;
   exception
         when others=>return False;
      
      end Try_Get_Integer;
      
   
   function Get_Integer
     (ErrorMessage:String:="No ingreso un numero. Vuelve a intentarlo.")return Integer is
      
   begin
      loop
      declare
         Value:Integer;
      begin        
         if(Try_Get_Integer(Value))then
               return Value;
            end if;
            Put_Line(ErrorMessage);
      end; 
      end loop;   
      end Get_Integer;
end io;
