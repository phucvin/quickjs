--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
--[[ Original TypeScript
function fib(this: void, n : number) : number {
    if (n < 2) {
        return n;
    } else {
        return fib(n - 1) + fib(n - 2);
    }
}
print(fib(40))
]]
-- Also added local keyword to speed up
local function fib(n)
    if n < 2 then
        return n
    else
        return fib(n - 1) + fib(n - 2)
    end
end
print(fib(40))
