package body Generic_Demo is

    generic type T is private;
      
      
   
   
   procedure Generic_Swap(Value1: in out T,
                          Value2: in out T) is
      Aux:T;
   begin
      Aux:=Value1;
      Value1:=Value2;
      Value2:=Aux;
   end Generic_Swap;

end Generic_Demo;
