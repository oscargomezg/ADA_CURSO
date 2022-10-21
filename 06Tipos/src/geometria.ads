package Geometria is

   type Distancia is new Float;
   type Area is new Float;
   subtype Metros is Distancia;
   
   function "*"(Left: in Distancia;Right :in Distancia)return Area;
end Geometria;
