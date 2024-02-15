
" This is the Vundle package, which can be found on GitHub
" For GitHub repos, you specify Plugs using
" 'user/repository' format
Plug 'gmarik/vundle'

" We could also add repsoitories with a ".git" extension
" Plug 'scrooloose/nerdtree.git'

" To get Plugs form Vim Scripts, you can regerene the Plug
" by name as it appears on the site
" Plug 'Buffergator'

" To install a Plug add it here and run :PlugInstall
" To update the Plugs run :PlugInstall! or :PlugUpdate
" To delete a Plug remove it here and run :PlugClean

" YOUR LIST OF PlugS GOES HERE LIKE THIS:
" Plug 'bling/vim-airline'

" The most used Vim Plug. It provides fuzz finding capabilities
" for Vim, to allow you to search for files in a similar way
" to Sublime Text's 'Go To Anything' bar.
Plug 'kien/ctrlp.vim'
nmap <S-f> :CtrlP <CR>

" Use for code search. Much faster than grep or an IDE's built in
" search. Allows for seemless integration in Vim; in addition,
" allowing you to eaily jump to the code you're srach on, opening
" new tabs or splits if you like.
Plug 'mileszs/ack.vim'

" Is one the most popular Vim Plugs out there. It provides a more
" traditional side-draw style navigation interface to complement Vim's
" other navigation options. Userful when looking at other people's code
" in new projects, when I want to look around a directory to see what's
" available and how it's structured before diving in.
Plug 'scrooloose/nerdtree'
nmap <S-n> :NERDTreeToggle <CR>

" Adds a 'commenting' action, gc that can used with existing motions.
" So gcc comments out the current line, gcG comments out the reminder
" of a file, and so on. This yet another Tim Pope Plug.
Plug 'tpope/vim-commentary'

" Addes solarized color scheme to vim
Plug 'altercation/vim-colors-solarized'

" A Plug to pretty up your status bar. 
" It creates the nice triangular effects " 
" and integrates with other Plugs to show helpful information in the status
" bar. IT does require modified fonts to use though, so you'll need have pretty
" full controll of the system you're on to use this one.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Setuping powerline fonts for airline.
let g:airline_powerline_fonts = 1

" A syntax checking Plug for Vim that integreate with external synatax checkers
" to provide in-editor feedback on your code as you make changes. For instance,
" it can integrate with jshint, llvm or javac to provide immediate feedback on a
" file.
Plug 'scrooloose/syntastic'

" A code completion engine for Vim that builds on Vim's built in autocomplete
" features to offer "smart completion" for as many situations as possible. It
" can integrate with Clang, Jedi, Omnisharp, and Vim's omnicompletion in order
" to bring smart autocomplete to variety of languages.
Plug 'Valloric/YouCompleteMe'

" Hard Mode is Plug which disable the arrows key, the hjkl keys, the page up/down keys, and a handful
" of other keys which allow one to rely on character-wise naigation. The philosophy behind Hard Mode is
" that you'll never master Vim's advanced motion and search functionality if you can fall back on the anti-
" pattern of fumbling around your code with the arrows keys.
Plug 'wikitopian/hardmode'

" Polymer IDE - provides autocompletion, and more for web components
Plug 'webdesus/polymer-ide.vim'

" async language server protocol plugin for vim and neovim - I'm using this for Swift/Objc LSP support
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
