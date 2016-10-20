" bazel.vim - vim plugin for relatedfiles
" Author: Yunlong Liu (davislong198833@gmail.com)

if !has('python')
  echoerr "This plugin should run with python support."
  finish
endif

let s:folder = expand('<sfile>:p:h')

function! RelatedFiles(opt)
python << EOF
import os
import sys
import vim

curr_path = vim.eval('s:folder')
lib_path = os.path.join(curr_path, '.')
sys.path.insert(0, lib_path)

import vim_relatedfiles
vim_relatedfiles.Run(vim.eval('a:opt'))
EOF
endfunction

" Commands
command! RelatedBuild call RelatedFiles("build")
command! RelatedHeader call RelatedFiles("hdr")
command! RelatedSource call RelatedFiles("src")
command! RelatedTest call RelatedFiles("test")

" Key mappings in normal mode
nmap <leader>rb :RelatedBuild<CR>
nmap <leader>rh :RelatedHeader<CR>
nmap <leader>rc :RelatedSource<CR>
nmap <leader>rt :RelatedTest<CR>
