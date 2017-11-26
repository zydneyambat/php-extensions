# PHP Extensions

# How to run
1. Make sure to clone [php-src](https://github.com/php/php-src.git) repo. Currently I'm using master which is PHP Version 7.2
2. Rename .env.dist -> .env and configure it.
3. Run docker compose: `docker-compose up -d`

# Enable the extension
```
docker exec -it phpextensions_php_1 ./configure --enable-helloworld
docker exec -it phpextensions_php_1 make
```

## Running sample test of *helloworld* extension
`docker exec -it phpextensions_php_1 ./sapi/cli/php ext/helloworld/helloworld.php`

```php
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

```

## Output
```
Functions available in the test extension:
helloworld_test1
helloworld_test2
greet_friend

The extension helloworld is loaded and working!
Hello Zyd
Hi, Zyd!
```
