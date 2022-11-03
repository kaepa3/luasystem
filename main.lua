function hello()
	local handle = io.popen("./main")
	local result = handle:read("*a")
	handle:close()

	print(result)
end

vim.api.nvim_create_user_command("TestHello", function(args)
	hello()
end, { nargs = "?" })
