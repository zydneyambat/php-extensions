PHP_ARG_ENABLE(helloworld, whether to enable helloworld support,
[  --enable-helloworld          Enable helloworld support], no)

if test "$PHP_HELLOWORLD" != "no"; then
  AC_DEFINE(HAVE_HELLOWORLD, 1, [ Have helloworld support ])
  PHP_NEW_EXTENSION(helloworld, helloworld.c, $ext_shared)
fi
