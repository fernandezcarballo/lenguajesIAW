#!/usr/bin/perl

use CGI;
$query = new CGI;

print $query->header;
print $query->start_html('MODULO CGI');
if(!$query->param) {
	print $query->start_form;
      	print $query->h3('Introduce un lenguaje');
	print $query->textfield('lenguaje');
	print $query->h3('Introduzca una nota de cuanto te gusta');
	print $query->textfield('cuanto');
	print $query->br;
      	print $query->submit;
      	print $query->end_form;
      	print $query->br;
}
else{
	if (!$query->param('lenguaje') eq "") {
		print $query->start_form;
     		print $query->b('Te gusta el lenguaje '),$query->param('lenguaje'),' ',$query->b('y le doy una nota de un '),$query->param('cuanto');
		print $query->br;
		print $query->h3('Porque te gusta');
		print $query->textfield('explicacion');
		print $query->submit(-name=>'enviar',-value=>'Enviar');
	      	print $query->end_form;
		print $query->br;

	}
}


if (!$query->param('enviar') eq ""){
	print $query->start_html;
      	print $query->start_form;
      	print $query->b('La explicacion: '),' ',$query->param('explicacion');
      	print $query->end_form;
      	print $query->br;
}
