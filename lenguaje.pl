#!/usr/bin/perl
print "Content-Type: text/html\n\n";
if($ENV{'QUERY_STRING'} eq "") {
   print "<h2> Que lenguaje de programacion te gusta mas</h2>
          <form name=\"search\" method=\"get\" >";
   open F, "/home/alvaro/lenguajes.txt";
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
else {
   @arGet=split("=",$ENV{'QUERY_STRING'});
   $arGet[1]=~ s/%2F/\//g;
   print "Entonces el lenguaje que mas te gusta es $arGet[1] \n\n"
}
