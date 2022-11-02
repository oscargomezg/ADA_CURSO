package Generic_Demo is

   generic type T is private;
   procedure Generic_Swap(Value1: in out T,
                             Value2: in out T);

end Generic_Demo;
