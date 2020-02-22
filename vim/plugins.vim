
" This is the Vundle package, which can be found on GitHub
" For GitHub repos, you specify plugins using
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repsoitories with a ".git" extension
" Plugin 'scrooloose/nerdtree.git'

" To get plugins form Vim Scripts, you can regerene the plugin
" by name as it appears on the site
" Plugin 'Buffergator'

" To install a plugin add it here and run :PluginInstall
" To update the plugins run :PluginInstall! or :PluginUpdate
" To delete a plugin remove it here and run :PluginClean

" YOUR LIST OF PLUGINS GOES HERE LIKE THIS:
" Plugin 'bling/vim-airline'

" The most used Vim plugin. It provides fuzz finding capabilities
" for Vim, to allow you to search for files in a similar way
" to Sublime Text's 'Go To Anything' bar.
Plugin 'kien/ctrlp.vim'
nmap <S-f> :CtrlP <CR>

" Use for code search. Much faster than grep or an IDE's built in
" search. Allows for seemless integration in Vim; in addition,
" allowing you to eaily jump to the code you're srach on, opening
" new tabs or splits if you like.
Plugin 'mileszs/ack.vim'

" Is one the most popular Vim plugins out there. It provides a more
" traditional side-draw style navigation interface to complement Vim's
" other navigation options. Userful when looking at other people's code
" in new projects, when I want to look around a directory to see what's
" available and how it's structured before diving in.
Plugin 'scrooloose/nerdtree'
nmap <S-n> :NERDTreeToggle <CR>

" Adds a 'commenting' action, gc that can used with existing motions.
" So gcc comments out the current line, gcG comments out the reminder
" of a file, and so on. This yet another Tim Pope plugin.
Plugin 'tpope/vim-commentary'

" Addes solarized color scheme to vim
Plugin 'altercation/vim-colors-solarized'

" A plugin to pretty up your status bar. 
" It creates the nice triangular effects " 
" and integrates with other plugins to show helpful information in the status
" bar. IT does require modified fonts to use though, so you'll need have pretty
" full controll of the system you're on to use this one.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Setuping powerline fonts for airline.
let g:airline_powerline_fonts = 1

" A syntax checking plugin for Vim that integreate with external synatax checkers
" to provide in-editor feedback on your code as you make changes. For instance,
" it can integrate with jshint, llvm or javac to provide immediate feedback on a
" file.
Plugin 'scrooloose/syntastic'

" A code completion engine for Vim that builds on Vim's built in autocomplete
" features to offer "smart completion" for as many situations as possible. It
" can integrate with Clang, Jedi, Omnisharp, and Vim's omnicompletion in order
" to bring smart autocomplete to variety of languages.
Plugin 'Valloric/YouCompleteMe'

" Hard Mode is plugin which disable the arrows key, the hjkl keys, the page up/down keys, and a handful
" of other keys which allow one to rely on character-wise naigation. The philosophy behind Hard Mode is
" that you'll never master Vim's advanced motion and search functionality if you can fall back on the anti-
" pattern of fumbling around your code with the arrows keys.
Plugin 'wikitopian/hardmode'

" Polymer IDE - provides autocompletion, and more for web components
Plugin 'webdesus/polymer-ide.vim'
