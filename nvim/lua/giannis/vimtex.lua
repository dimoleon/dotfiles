vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_compiler_latexmk_engines = {
    ['_']                = '-lualatex',
    ['pdfdvi']           = '-pdfdvi',
    ['pdfps']            = '-pdfps',
    ['pdflatex']         = '-pdf',
    ['luatex']           = '-lualatex',
    ['lualatex']         = '-lualatex',
    ['xelatex']          = '-xelatex',
    ['context (pdftex)'] = '-pdf -pdflatex=texexec',
    ['context (luatex)'] = '-pdf -pdflatex=context',
    ['context (xetex)']  = "-pdf -pdflatex='texexec --xtx'",
}

