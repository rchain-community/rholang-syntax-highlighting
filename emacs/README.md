# Rholang for Emacs

## Features

* Supports basic syntax highlighting for .rho files.


## Potential Enhancements

* Consider improving the colors chosen for highlighting.
* Test and possibly enhance support for indentation.  (Indentation hasn't been addressed;
  it is supposed that Emacs will use some sort of default indentation algorithm...)
* See if Emacs supports snippets, and provide support for them.
* Create an integration plugin for command-line tools as they are developed.
* Create a plugin that's more friendly for users (such as myself, ironically enough)
  who would prefer to use a package management tool...


## Notes

Emacs only needs one file to create a major mode.  This file, however, cannot be put
directly into "~/.emacs.d"; for security reasons (I think), Emacs won't run anything
that's in this directory, excepting the configuration file "init.el".  Thus, it is
necessary to create a directory and put that file there.

I created a directory named "~/.emacs.d/syntax-modes/" for this purpose.  In the file
"~/.emacs.d/init.el", I added the following lines (conveniently for me, right after
the lines setting up Evil Mode >:-]):

```scheme
(add-to-list 'load-path "~/.emacs.d/syntax-modes/")
(require 'rholang-mode)
```

Once all this is put in place, "~/.emacs.d/syntax-modes/rholang-mode.el" should load
just fine when ".rho" files are opened in Emacs.
