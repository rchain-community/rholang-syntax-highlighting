" Vim syntax file
" Language:  Rholang
" Maintainer:  Alpheus Madsen
" Latest Revision:  2018-05-16

if exists("b:current_syntax")
	finish
endif

" Rholang Keywords
syn keyword rholangLanguageKeywords contract for in if else match new select case bundle bundle0 bundle+ bundle-

syn keyword rholangToDo contained TODO FIXME XXX NOTE

" Rholang Regions
syn match rholangLineComment "//.*" contains=rholangToDo

"syn region rholangFold start="{" end="}" transparent fold

" Rholang strings (taken from Java Strings)
syn match rholangStringSpecialChar contained "\\\([4-9]\d\|[0-3]\d\d\|[\"\\'ntbrf]\|u\x\{4\}\)"
syn region rholangString start=+"+ end=+"+ contains=rholangStringSpecialChar

" Rholang URIs
syn match rholangURISpecialChar contained "\\\([4-9]\d\|[0-3]\d\d\|[`\\'ntbrf]\|u\x\{4\}\)"
syn region rholangURI start=+`+ end=+`+ contains=rholangURISpecialChar


" Rholang numbers -- shamelessly stolen from Java numbers
" (and may be subject to change...)
syn match rholangNumber          "\<\(0[bB][0-1]\+\|0[0-7]*\|0[xX]\x\+\|\d\(\d\|_\d\)*\)[lL]\=\>"
syn match rholangNumber          "\(\<\d\(\d\|_\d\)*\.\(\d\(\d\|_\d\)*\)\=\|\.\d\(\d\|_\d\)*\)\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\="
syn match rholangNumber          "\<\d\(\d\|_\d\)*[eE][-+]\=\d\(\d\|_\d\)*[fFdD]\=\>"
syn match rholangNumber          "\<\d\(\d\|_\d\)*\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\>"


" Special Rholang values
syn match rholangValue 'Nil\|true\|false\|Bool\|Int\|String\|Uri\|ByteArray'

" Rholang operators
""" Theoretically I'd like the entire channel highlighed.  It seems to me
""" that I would need to learn how to handle three special cases:
"""     @identifier
"""     @"some sort of string"
"""     @{bracketed - operations}
""" the last of which may possibly be delimited by something other than curly brackets...
syn match rholangChannel  '@'

syn match rholangOperator '+\|-\|\*\|/[^/]\|==\|='
syn match rholangOperator '!\||\|<-\|<=\|=>\|_\|\<not\>\|\<and\>\|\<or\>\|\.\.\.'

syn match rholangBracket '(\|\[\|{\|}\|\]\|)'

" Set Rholang Syntax!
let b:current_syntax = "rholang"

hi def link rholangLineComment        Comment

hi def link rholangNumber             Number
hi def link rholangString             Constant
hi def link rholangURI                Constant

hi def link rholangOperator           Operator
hi def link rholangChannel            Function

hi def link rholangToDo               Todo

hi def link rholangLanguageKeywords   Statement

hi def link rholangBracket            PreProc
hi def link rholangValue              Number

