#!/usr/bin/perl
print "Content-Type: text/html\n\n";
if($ENV{'QUERY_STRING'} eq "") {
   print "<h2> Que lenguaje de programacion escoges </h2>
          <form name=\"search\" method=\"get\" >";
   open F, "/home/alvarofe/Escritorio/lenguajes.txt";
   while(<F>) {
     chomp;
     @campos=split(",");
     $ar{$campos[0]}=$campos[0];
   }
   print "<select name = \"lenguaje\">";
   for (keys %ar){
     print "<option value=$_";
     print ">$_</option>";
   }
   print "</select>
         <input type=\"submit\" value=\"Adelante\" /> \n\n";
}

if($ENV{'QUERY_STRING'} ne "") {
	 @arGet=split("=",$ENV{'QUERY_STRING'});
	 print "El lenguaje escogido es: $arGet[1]";
  print "<h2> Porque te gusta mas ese lenguaje </h2>
          <form name=\"search\" method=\"get\" >";
   open F, "/home/alvarofe/Escritorio/respuestas.txt";
   while(<F>) {
     chomp;
     @campos=split(",");
     $ari{$campos[0]}=$campos[0];
   }
   print "<select name = \"respuesta\">";
   for (keys %ari){
     print "<option value=$_";
     print ">$_</option>";
   }  
 print "</select>
         <input type=\"submit\" value=\"Adelante\" /> \n\n";
   @ariGet=split("=",$ENV{'QUERY_STRING'});
   print "te gusta porque: $ariGet[1]";

}

