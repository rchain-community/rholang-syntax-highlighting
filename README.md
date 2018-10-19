Rholang Syntax Highlighting Files and Plugins
=============================================

By: Alpheus Madsen

**Files and Plugins developed for writing and compiling RChain contracts using Rholang.**

While we are working on a browser-based IDE hosted in Electron (code-named Rhover) for
working with Rholang, we don't expect everyone to want to use this IDE.  Thus, we have
developed some almost-proof-of-concept-ish files to help with these environments.  This
repository is going to consist of directories that include files for the various platforms.

This repository is going to be added to and updated sporadically, whenever we have an itch
that we'd like to address.  Ultimately, we expect the Rholang community to contribute
plugins for their favorite platforms.  If anything, this will likely be a good spot to
gather those tools as they come into existence.

Each supported development platform is represented by a directory, which will have the
files organized in a way that the platform expects them.  Information about those files
are to be kept here.

Alpheus created the Vim and Emacs files in part because he prefers to work on the command
line, and in part, to get a feel for what the syntax of Rholang is like, and how it can
be supported by various platforms...their development will likely be the result of how
much Alpheus gets to experiment with an use Rholang.  (As much as he'd like to develop
"Rhover" in Rholang, he understands it's going to be more practical to program it in
JavaScript for now...)


Supported Platforms
===================

Vim
---

**Features**

* Supports basic syntax highlighting for .rho files.

**Potential Enhancements**

* Examine (and perhaps provide) automatic indentation.
* Provide a snippets template for a snippets platform.
* Create an integration plugin for command-line tools as they are developed.
* Create a plugin that's more friendly for users (such as myself, ironically enough)
  who would prefer to use a package management tool...

**Notes**

There are multiple ways to deploy Vim syntax files; so far, only the simplest way is
supported.  In this method, Vim expects a syntax file like "rholang.vim" to be in a 
directory called "~/.vim/syntax" to define the syntax, and a different "rholang.vim" in
"~/.vim/ftdetect" to inform Vim that highlighting for ".rho" files exists.

Thus, to install this support (I can't bring myself to call this a "plugin", copy the files
found in these directories into the respective directories in your "~/.vim" directory, and
you should be good to go!


Emacs
-----

**Features**

* Supports basic syntax highlighting for .rho files.

**Potential Enhancements**

* Consider improving the colors chosen for highlighting.
* Test and possibly enhance support for indentation.  (Indentation hasn't been addressed;
  it is supposed that Emacs will use some sort of default indentation algorithm...)
* See if Emacs supports snippets, and provide support for them.
* Create an integration plugin for command-line tools as they are developed.
* Create a plugin that's more friendly for users (such as myself, ironically enough)
  who would prefer to use a package management tool...

**Notes**

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

