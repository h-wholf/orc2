#!/data/data/com.termux/files/usr/bin/zsh

bin=$1

curl -H "Accept-Version: 3" "https://lookup.binlist.net/"$bin --silent> bin2.txt

brand=$(cat bin2.txt|jq .brand)
tipo=$(cat bin2.txt|jq .type)
banco=$(cat bin2.txt|jq .country.name)
pais=$(cat bin2.txt|jq .country.emoji)
prepago=$(cat bin2.txt|jq .prepaid)
moneda=$(cat bin2.txt|jq .country.currency)
esquema=$(cat bin2.txt|jq .scheme)


#echo "esquema" $esquema "\nCOMPAÑIA" $brand "\nTYPO " $tipo "\nbanco " $banco"\nPAIS" $pais "\nPREPAGO " $prepago "\nMONEDA" $moneda)
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
    <td>ESQUEMA</td>
    <td>COMPAÑIA</td>
    <td>TIPO</td>
    <td>BANCO</td>
  </tr>
  <tr>
    <td class='datos'>$esquema</td>
    <td class='datos'>$brand</td>
    <td class='datos'>$tipo</td>
    <td class='datos'>$banco</td>
  </tr>
</table>
<table class='tabla'>
  <tr>
  <td>PAIS</td>
   <td>PREPAGO</td>
    <td>MONEDA</td>
  </tr>
  <tr>
  <td class='datos'>$pais</td>
    <td class='datos'>$prepago</td>
    <td class='datos'>$moneda</td>
  </tr>
</table>
"
