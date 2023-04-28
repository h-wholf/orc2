


<?php
echo "hola";
function f()
{
  echo "se ejecutara el script";
  $pais = $argv[1];
  $co = "zsh addr.sh ". $argv[1];
  $output = shell_exec($co);
  echo "$output";
  echo "hola";
}
?>
<iframe src='addres.php us' width="100%" height="500"></iframe>