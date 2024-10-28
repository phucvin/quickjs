cd ..

make

build/qjs --help

```
$ time build/qjs test/fib.js 
102334155
real    0m13.443s
user    0m13.297s
sys     0m0.006s
```

$ build/qjsc -e test/fib.js -o test/fib.c
