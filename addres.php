<?php
$pais = $_GET['argument1'];
$co = "zsh addr.sh ". $pais;
$output = shell_exec($co);
echo "$output";
?>