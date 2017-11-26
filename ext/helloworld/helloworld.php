<?php

$module = 'helloworld';

if (!extension_loaded('helloworld')) {
    die("Module {$module} is not compiled into PHP");
}

$functions = get_extension_funcs($module);
echo 'Functions available in the test extension:' . PHP_EOL;
foreach($functions as $func) {
    echo $func . PHP_EOL;
}

echo  PHP_EOL;
echo helloworld_test1();

echo helloworld_test2('Zyd') . PHP_EOL;

echo greet_friend() . PHP_EOL;
