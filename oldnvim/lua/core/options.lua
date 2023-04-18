local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs, identation 
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping 
opt.wrap = false

-- search settings 
opt.ignorecase = true
opt.smartcase = true

-- cursor line 
-- opt.cursorline = true

-- appearance 
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace 
opt.backspace = "indent,eol,start"

-- clipboard 
opt.clipboard:append("unnamedplus")

-- splits 
opt.splitright = true
opt.splitbelow = true

-- dash
opt.iskeyword:append("-")

-- encoding 
opt.fileencoding = 'utf-8'

-- mouse 
opt.mouse = 'a'

-- updatetime 
opt.updatetime = 400

-- greek 
vim.opt.langmap = 'ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz'
