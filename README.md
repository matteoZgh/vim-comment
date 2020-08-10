# vim-comment

#### Introduction

vim-comment

#### Usage

Do `:call Comment()` and `:call Uncomment()`

Or, if you want a key-binding, add this to your `vimrc`/`init.vim`:

```vimscript
noremap <silent> <C-j> :call Comment()<CR>
noremap <silent> <C-k> :call Uncomment()<CR>
```

#### Installation

Install `vim-comment` with [vim-plug](https://github.com/junegunn/vim-plug)

```vimscript
Plug 'matteoZgh/vim-comment'
```