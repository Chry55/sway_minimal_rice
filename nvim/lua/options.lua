if vim.fn.has("nvim-0.9") == 0 then
    vim.api.nvim_err_writeln("Need Neovim 0.9+ for this config")
    vim.cmd([[quit]])
end

-- Check for required executables efficiently
local required_cmds = { "git", "rg" }
local fd_cmds = { "fd", "fdfind" }
local fd_found = false

for _, cmd in ipairs(required_cmds) do
    if vim.fn.executable(cmd) == 0 then
        vim.api.nvim_err_writeln(("Required command `%s` is not installed"):format(cmd))
        vim.cmd([[quit]])
    end
end

for _, c in ipairs(fd_cmds) do
    if vim.fn.executable(c) == 1 then
        fd_found = true
        break
    end
end
if not fd_found then
    vim.api.nvim_err_writeln("Required command `fd` or `fdfind` is not installed")
    vim.cmd([[quit]])
end

vim.opt.termguicolors = true

for _, mod in ipairs({ "options", "autocmds"}) do
    local ok, err = pcall(require, mod)
    if not ok then
        vim.api.nvim_err_writeln("Failed to load " .. mod .. "\n\n" .. tostring(err))
    end
end

-- Load custom configurations if they exist
local ok, custom = pcall(require, "custom")
if ok and type(custom) == "table" and type(custom.configs) == "function" then
    custom.configs()
end
