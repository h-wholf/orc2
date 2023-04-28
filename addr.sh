#!/data/data/com.termux/files/usr/bin/zsh

a=$1
fk()
{
 curl --silent https://www.fakexy.com/fake-address-generator-$a|html2text > data.ho
}

fk

dato=$(cat data.ho)

NOMBRE=$(echo $dato |grep 'Full Name' |awk '{print $3,$4,$5}')
STREET=$(echo $dato |grep 'Street' |awk '{print $2,$3,$4,$5,$6}')
CIUDAD=$(echo $dato |grep 'City/Town' |awk '{print $2,$3,$4,$5}')
ESTADO=$(echo $dato |grep 'State' |awk '{print $2,$3,$4}'| cut -d $'\n' -f 1)
CP=$(echo $dato |grep 'Zip' |awk '{print $3}')

PAIS=$(echo $dato |grep 'Country' |awk '{print $2,$3}')
CEL=$(echo $dato |grep 'Phone' |awk '{print $3,$4,$5}')
GENERO=$(echo $dato |grep 'Gender' |awk '{print $2}')
CUMPLE=$(echo $dato |grep 'Birthday' |awk '{print $2}')
SSN=$(echo $dato |grep 'Social Secur' |awk '{print $4}')



echo "insert into datos (NOMBRE,STREET,CIUDAD,ESTADO,CP,PAIS,CEL,GENERO,CUMPLE,SSN) values('$NOMBRE','$STREET','$CIUDAD','$ESTADO','$CP','$PAIS','$CEL','$GENERO','$CUMPLE','$SSN');"|sqlite3 id.db

#echo "NOMBRE "$NOMBRE
#echo "ESTRET "$STREET
#echo "CIUDAD "$CIUDAD
#echo "ESTADO "$ESTADO
#echo "CÓDIGO POSTAL "$CP
#echo "PAIS " $PAIS
#echo "CELULAR "$CEL
#echo "GENERO "$GENERO
#echo "FECHA DE NACIMIENTO "$CUMPLE
#echo "SEGURO SOCIAL "$SSN

echo "
<style>
table {

   width: 100%;

   border: 1px solid #000;
   
}
td {
   width: 25%;
   text-align: left;
   vertical-align: top;
   border: 1px solid rgb(17,173,180);
   background-color: rgb(23,33,45);
   color: rgb(181,235,79);
   
   
}
.datos

{

  color: rgb(255,163,80);
  background-color: rgb(23,33,45);
  font-style: italic;
  letter-spacing: 0.2em;

}
</style>
<table class='tabla'>
  <tr>
    <td>Nombre</td>
    <td>STREET</td>
    <td>CIUDAD</td>
    <td>ESTADO</td>
    <td>CÓDIGO POSTAL</td>
    
  </tr>
  <tr>
    <td class='datos'>$NOMBRE</td>
    <td class='datos'>$STREET</td>
    <td class='datos'>$CIUDAD</td>
    <td class='datos'>$ESTADO</td>
    <td class='datos'>$CP</td>
    
  </tr>
</table>
<table class='tabla'>
  <tr>
  <td>PAIS</td>
   <td>CELULAR</td>
    <td>GENERO</td>
    <td>FECHA DE NACIMIENTO</td>
    <td>SEGURO SOCIAL</td>
  </tr>
  <tr>
  <td class='datos'>$PAIS</td>
    <td class='datos'>$CEL</td>
    <td class='datos'>$GENERO</td>
    <td class='datos'>$CUMPLE</td>
    <td class='datos'>$SSN</td>
  </tr>
</table>
"
