local handle = io.popen("./main")
local result = handle:read("*a")
handle:close()

print(result)
