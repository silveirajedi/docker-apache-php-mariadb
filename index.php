<?php

$data = new DateTime();

var_dump([
    "Teste Xdebug",
    "Nome" => "Leandro",
    "E-mail" => "silveira.jedi@gmail.com",
    $data->format("d/m/Y - h:i")
]);

phpinfo();