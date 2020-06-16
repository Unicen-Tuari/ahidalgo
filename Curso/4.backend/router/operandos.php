<?php

function sumar($a,$b){
    $resultado = $a + $b;
    return "La suma de $a y $b es: $resultado";
}

echo sumar($_GET['a'], $_GET['b']);

?>