<?php
//funciones en php
function titulo($datos) {
    echo "<div class=\"titulo\" ><center>$datos</center></div>";
}
// caja de texto primer argumento el place older segundo argumento el id de la caja de texto
function inb($p,$id){
  echo "<br>
<input class=\"inputBox\" placeholder=\"$p\" type=\"text\" id=$id>";
}
//boton nombre y función 
function boton($nombre,$funcion){
  	echo "<button class=\"boton2\" onclick=\"$funcion\">$nombre</button>";
  
}

// caja de textO text area nesecita un id para mostar los datos 
function tex($p,$id){
  echo "	<textarea class=\"text\"  placeholder=\"$p\" id=\"$id\"></textarea>";
}






// contenido de la página 

titulo("ORC CARDER V2");
echo "<div class=\"contenido\">";
//tarjeta 

echo "<div class=\"targeta\">";
inb("INGRESA BIM O TU CC A GENERAR","input1");
echo "<a>";
boton("BIN CHECK","curl('https://lookup.binlist.net/')");
boton("GENERAR CCS","gen()");
echo "</a>";
tex("AQUI SE MOSTRARAN LA INFORMACION DEL BIN O LAS CCS GENERADAS","caja1");
echo "</div>";



echo "<div class=\"targeta\">";
inb("INGRESA EL BIN PARA SABER SU INFORMACIÓN","input2");
echo "<p classs=\"bo\">";
boton("INFO BIN","saludar()");boton("CUAL ES MI IP","ip('https://ifconfig.me/all.json')");
echo "</p>";
tex("AQUI SE MOSTRARA LA INFORMACIÓN DEL BIN","caja2");
echo "</div>";



echo "</div>";
?>
