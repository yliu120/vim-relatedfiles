# Vim-RelatedFiles

## Overview

This is a very light-weighted plugin for VIM which may be very useful for C++ developers. We will
probably support Python as well. Specifically for C++, a module is usually divided into three separate
files: header/source/unittest. Switching between the header and the source file for a single module
might be tedious. Here we provide a smart and easy way to do this. This VIM plugin help you switch
to another part of the module (header/source/test) from any part of the module. Say you are in the header
file of module - "thread.h", you want to open up a new tab for "thread.cc" or "thread_test.cc". Then this
plugin will help you do this.

## Installation

This plugin is relatively easy to install using whatever ways. I prefer to use Vundle:
1) "git clone" this repo to ~/.vim/bundle/
2) In $HOME/vimrc or /etc/vimrc, whatever. In the Vundle section of this file, please
add a line like this:
```
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add vim-relatedfiles entry to here
Plugin 'vim-relatedfiles'

call vundle#end()
```

You can try out another ways like Pathogen to install.

## Usage
### Use Cases

This plugin could only be guaranteed to work for Google/Facebook/LLVM files' naming styles.
Modules should better be named as "module_a" or "ModuleA":
+ Header files: "module_a.h", "module_a.hpp", "ModuleA.h" and etc.
+ Source files: "module_a.c", "module_a.cc", "module_a.cpp", "ModuleA.cpp" and etc,
+ Test files: "module_a_test.c", "module_a_test.cc", "ModuleATest.cpp".

BUILD files can be:
+ GNU Make: Makefile
+ CMake: CMakeLists.txt
+ Bazel: BUILD (take this as example)

### Details
In the relatedfiles.vim, we set four keyboard mappings only:
1. Switch to BUILD file: <leader>rb.
 
2. Switch to Header file: <leader>rh.
 
3. Switch to Source file: <leader>rc.
 
4. Switch to Test file: <leader>rt.
 

If files are not created, then we will provide several file names with different extensions to
user. User can make an option and the file will be created in a new tab. If the file is not opened,
the program will open it up in a new tab. If the file requested is opened in another tab, then
VIM jumps to that tab.
