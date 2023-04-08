vim.cmd.nmap("<F9>", ":call vimspector#Launch()<CR>")
vim.cmd.nmap("<F10>", ":call vimspector#Reset()<CR>")
vim.cmd.nmap("<F6>", ":call vimspector#StepOver()<CR>")
vim.cmd.nmap("<F7>", ":call vimspector#StepOut()<CR>")
vim.cmd.nmap("<F8>", ":call vimspector#StepInto()<CR>")
vim.cmd.nmap("Db", ":call vimspector#ToggleBreakpoint()<CR>")
vim.cmd.nmap("Dw", ":call vimspector#AddWatch()<CR>")
vim.cmd.nmap("De", ":call vimspector#Evaluate()<CR>")

