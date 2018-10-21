# Rholang for Vim

## Features

* Supports basic syntax highlighting for .rho files.


## Potential Enhancements

* Examine (and perhaps provide) automatic indentation.
* Provide a snippets template for a snippets platform.
* Create an integration plugin for command-line tools as they are developed.
* Create a plugin that's more friendly for users (such as myself, ironically enough)
  who would prefer to use a package management tool...


## Notes

There are multiple ways to deploy Vim syntax files; so far, only the simplest way is
supported.  In this method, Vim expects a syntax file like "rholang.vim" to be in a
directory called "~/.vim/syntax" to define the syntax, and a different "rholang.vim" in
"~/.vim/ftdetect" to inform Vim that highlighting for ".rho" files exists.

Thus, to install this support (I can't bring myself to call this a "plugin"), copy the files
found in these directories into the respective directories in your "~/.vim" directory, and
you should be good to go!
