
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
         <input type=\"submit\" value=\"Enviar\" /> \n\n";
}
if($ENV{'QUERY_STRING'} ne "") {
	 @arGet=split("=",$ENV{'QUERY_STRING'});
   if($arGet[0] eq 'lenguaje') {
	     print "El lenguaje escogido es: $arGet[1]";
       print "<h2> Porrrrrque te gusta mas el lenguaje de programacion: $arGet[1]</h2>
          <form name=\"search\" method=\"get\" >";
       open F, "/home/alvarofe/Escritorio/respuestas.txt";
       while(<F>) {
         chomp;
         #@campos=split(",");
         #$ar{$campos[0]}=$campos[0];
         push @ar,$_;
       }
       #push @ar,"muy%20interesante";
       print "<select name = \"respuesta\">";
       for (@ar){
          print "<option value=$_";
          print ">$_</option>";
       }  
       print "</select>
         <input type=\"submit\" value=\"Enviar\" />";
  }
  if($arGet[0] eq 'respuesta') {
    #@ariGet=split("=",$ENV{'QUERY_STRING'});
    print "te gusta porque: $arGet[1]";
  }
}
