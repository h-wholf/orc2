<?php
$bin = $_GET['argument1'];
$co = "zsh bin.sh ". $bin;
$output = shell_exec($co);
echo "$output";

?>