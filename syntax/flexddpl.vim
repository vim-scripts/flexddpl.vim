" Vim syntax file
" Language:	FlexDDPL - Flexible Data Distribution Policy Language
" Maintainer:	Josef Spillner <josef.spillner@tu-dresden.de>
" Last Change:	Wed, 08 Aug 2012 08:48:54 +0200
" Filenames:	*.flexddpl

if exists("b:current_syntax")
    finish
endif

"syn region flexddplNestedCurlyBraces start="{" skip="\\\\\|\\}" end="}" contains=statement

syn match flexddplComment "#.*"
syn match flexddplContext "^\ *\zs[!]\?[@~]\?[a-z]*\ze {"
syn match flexddplNestedCurlyBraces "{\|}"

syn keyword flexddplTarget control store adapt

hi def link flexddplNestedCurlyBraces Constant
hi def link flexddplComment Comment
hi def link flexddplTarget Type
hi def link flexddplContext Special

"hi def link statement Special

