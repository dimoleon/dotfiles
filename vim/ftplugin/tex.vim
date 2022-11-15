if empty(v:servername) && exists('*remote_startserver')
    call remote_startserver('VIM')
endif

nmap <localleader>v <plug>(vimtex-view)
