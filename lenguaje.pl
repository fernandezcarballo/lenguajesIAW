#!/usr/bin/perl
print "Content-Type: text/html\n\n";
print "Content-Type: text/html; charset=utf-8\n\n";
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
  if($arGet[0] eq 'lenguaje') {
    print "El lenguaje escogido es: $arGet[1]";
    print "<h2> Porque te gusta mas ese lenguaje </h2>
          <form name=\"search\" method=\"get\" >";
    open F, "/home/alvarofe/Escritorio/respuestas.txt";
    while(<F>) {
     chomp;
     push @ari, $_;
    }
    print "<select name = \"respuesta\">";
    for (@ari){
     print "<option value=\"$_\"";
     print ">$_</option>";
    }  
    print "</select>
          <input type=\"submit\" value=\"Adelante\" /> \n\n";
  }
  if($arGet[0] eq 'respuesta') {
   $arGet[1]=~ s/\+/ /g;
   $arGet[1]=~ s/%20/ /g;
   print "te gusta porque: $arGet[1]";
  }
}
