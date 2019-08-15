<?php
    $a = array();   
    $a[1] = '1'; 
    $a[2] = '1';
    for ($i = 3; $i < 65; $i++) {
        $a[$i] = bcadd($a[$i-1], $a[$i-2]);
    }
    for ($i = 1; $i < 65; $i++) {
        echo($i."-".$a[$i].", <br/>\n");
    }
    echo("...\n");
?>