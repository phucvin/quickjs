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

Compare with V8 jitless (by using Deno):
```
$ time deno run --v8-flags="--jitless" test/fib.js
102334155
real    0m9.927s
user    0m9.866s
sys     0m0.021s
```


Compare with JavaScriptCore (JSC, to build: https://constellation.slowstart.org/blog/2016/05/02/how-to-build-javascriptcore-on-your-machine/):
```
TODO
```

Compare JIT engines:
```
$ time luajit test/fib.lua 
102334155
real    0m0.872s
user    0m0.866s
sys     0m0.002s

$ time deno run test/fib.js
102334155
real    0m1.375s
user    0m1.355s
sys     0m0.014s

$ time bun test/fib.js
102334155
real    0m1.082s
user    0m1.035s
sys     0m0.009s
```