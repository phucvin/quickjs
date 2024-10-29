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

Compare with Lua 5.3 and LuaJIT (jit off)
```
$ time lua test/fib.lua 
102334155
real    0m9.919s
user    0m9.858s
sys     0m0.001s

$ time luajit -joff test/fib.lua 
102334155
real    0m4.505s
user    0m4.479s
sys     0m0.005s
```
