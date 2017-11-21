<?php
//echo exec("py -2 UserCollaboration.py ".$_GET["username"]);

$command = escapeshellcmd('UserCollaboration.py '.$_GET["username"]);
$output = shell_exec($command);
echo $output;
?>