<?php
$output = shell_exec('zsh addr.sh mx');
  
// Display the list of all file
// and directory
echo "<pre>$output</pre>";

?>
