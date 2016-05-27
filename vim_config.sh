#!/bin/bash
#O primeiro comando inclui a pastados onde se localizam meus scripts pessois como uma das pastas onde as shell irão procurar por comandos
source /home/supervedovatto/Documents/Programas/Shell/config/myvariables.sh

# ATUALIZA VIM
echo "Desinstalando todas as versões anteriores do vim *****************************************************************"
#Desinstala o vim caso o mesmo já esteja instalado
sudo apt-get purge vim vim-gnome vim-runtime gvim vim-tiny vim-common vim-gui-common
sudo dpkg -r vim
# O procedimento a seguir é inspirado na página
# //github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
VimSource=/tmp/vim
if [ -d "$VimSource" ]; then
	echo "Apagando os Downloads anteriores da pasta /tmp*****************************************************************"
    rm -rf $VimSource
fi

Vim=$Programas/Vim
if [ ! -f $Vim/myvim_amd64.deb ]; then
	echo "Baixa nova cópia do vim do git *****************************************************************"
	git clone https://github.com/vim/vim.git $VimSource
	make disclean -C $VimSource
	# O opção --with-features configura o vim com todos os recursos disponíveis
	# http://vimdoc.sourceforge.net/htmldoc/various.html
	cd $VimSource 
	# ./configure --with-features=huge +job +channel +conceal +python +python3 +clientserver +mouse +syntax 
	echo "Recompila o vim segudo configurações pessoais *****************************************************************"
	chmod +x configure
	./configure --with-features=huge \
		--enable-cscope \
		--enable-gui=gtk2 \
		--enable-luainterp \
		--enable-multibyte \
		--enable-perlinterp \
		--enable-python3interp \
		--enable-pythoninterp \
		--enable-rubyinterp \
		--prefix=/usr \
		+X11 \
		+acl \
		+arabicg \
		+autocmd \
		+balloon_eval \
		+browse \
		+byte_offset \
		+channel \
		+cindent \
		+clientserver \
		+clipboard \
		+cmdline_compl \
		+cmdline_hist \
		+cmdline_info \
		+comments \
		+conceal \
		+conceal \
		+cryptv \
		+cscope \
		+cursorbind \
		+cursorshape \
		+dialog_con_gui \
		+diff \
		+digraphs \
		+dnd \
		+ebcdic \
		+emacs_tags \
		+eval \
		+ex_extra \
		+extra_search \
		+farsi \
		+file_in_path \
		+find_in_path \
		+float \
		+folding \
		+footer \
		+fork \
		+gettext \
		+hangul_input \
		+iconv \
		+insert_expand \
		+job \
		+jumplist \
		+keymap \
		+langmap \
		+libcall \
		+linebreak \
		+lispindent \
		+listcmds \
		+localmap \
		+lua \
		+menu \
		+mksession \
		+modify_fname \
		+mouse \
		+mouse_dec \
		+mouse_gpm \
		+mouse_jsbterm \
		+mouse_nettermg \
		+mouse_sgr \
		+mouse_sysmouse \
		+mouse_urxvt \
		+mouse_xterm \
		+mouseshape \
		+multi_byte \
		+multi_lang \
		+mzscheme \
		+netbeans_intg \
		+path_extra \
		+perl \
		+persistent_undo \
		+postscript \
		+printer \
		+profile \
		+python \
		+python3 \
		+quickfix \
		+reltime \
		+rightleft \
		+ruby \
		+scrollbind \
		+signs \
		+smartindent \
		+sniff \
		+startuptime \
		+statusline \
		+sun_workshop \
		+syntax \
		+tag_any_white \
		+tag_binary \
		+tag_old_static \
		+tcl \
		+terminfo \
		+termresponse \
		+textobjects \
		+title \
		+toolbar \
		+user_commands \
		+vertsplit \
		+viminfo \
		+virtualedit \
		+visual \
		+visualextra \
		+vreplace \
		+wildignore \
		+wildmenu \
		+windows \
		+writebackup \
		+xfontset \
		+xim \
		+xpm \
		+xsmp_interact \
		+xterm_clipboard \
		+xterm_save 
	make VIMRUNTIMEDIR=/usr/share/vim/vim74
	# make -C $VimSource
	# make install -C $VimSource
	echo "Cria o pacote deb do vim recem compilado *****************************************************************"
	sudo checkinstall
	cp /tmp/vim/*.deb $Vim/myvim_amd64.deb || echo "erro na criação do pacote .deb" exit 0
else
	echo "Reaproveitando compilação anterior do vim *******************************"
	sudo dpkg -i $Vim/myvim_amd64.deb || echo "erro na instalação do pacote compilado" exit 0
fi

# set vim as your default editor with update-alternatives.
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim


# Remove os arquivos de configuração do vim nas versões do ubuntu
echo "Remove os arquivos de configuração do vim nas versões do ubuntu*****************************************************************"
rm -rf $MyUSER/.vim
rm $MyUSER/.vimrc
rm $MyUSER/.gvimrc
rm -rf ~/.vim
rm ~/.vimrc
rm ~/.gvimrc

echo "Baixa os pacotes de configuração pessoais do bitbucket *****************************************************************"
# git clone https://supervedovatto@bitbucket.org/supervedovatto/vim-config.git $MyUSER/.vim
git clone https://supervedovatto@bitbucket.org/supervedovatto/vim-config.git ~/.vim
if [ ! -d $MyUSER/.vim ]; then
	mkdir $MyUSER/.vim
fi
cp -r ~/.vim/* $MyUSER/.vim/
git init $MyUSER/.vim

#Configura o git
echo "Configura o git*****************************************************************"
git config --global user.name "supervedovatto"
git config --global user.email "supervedovatto@hotmail.com"
git config --global core.editor gvim
git config --global merge.tool gvimdiff
git config --global user.signinkey "09pop0o9"

bundlesave=$Vim/bundle
if [ ! -d $bundlesave ]; then
	#Instala os pacotes atualizados do vim
	echo "Baixa o Plugin Vundle para vim *****************************************************************"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	# git clone https://github.com/VundleVim/Vundle.vim.git $MyUSER/.vim/bundle/Vundle.vim
	echo "Instala os pacotes de configuração pessoais do bitbucket *****************************************************************"
	vim -e +PluginInstall +qall || echo "Erro na atualização dos plugins do vim"
	if [ ! -d $MyUSER/.vim/bundle ]; then
		mkdir $MyUSER/.vim/bundle
	fi
	if [ ! -d $bundlesave ]; then
		mkdir $bundlesave
	fi
	cp -r ~/.vim/bundle/* $MyUSER/.vim/bundle/
	cp -r ~/.vim/bundle/* $bundlesave/
	chown -R supervedovatto $MyUSER/.vim/bundle
	chown -R supervedovatto $bundlesave
else
	echo "Reaproveitando arquivos bundle da instalação anterior"
	if [ ! -d ~/.vim/bundle ]; then
		mkdir ~/.vim/bundle
	fi
	if [ ! -d $MyUSER/.vim/bundle ]; then
		mkdir $MyUSER/.vim/bundle
	fi
	cp -r $bundlesave/* $MyUSER/.vim/bundle/
	cp -r $bundlesave/* ~/.vim/bundle/
fi

echo "Instala o Pacote YouCompleteMe do vim*****************************************************************"
# cd ~/.vim/bundle/YouCompleteMe
#./install.py --clang-completer --omnisharp-completer --gocode-completer --tern-completer --racer-completer
sudo python $MyUSER/.vim/bundle/YouCompleteMe/install.py 
sudo python ~/.vim/bundle/YouCompleteMe/install.py 
# sudo python $MyUSER/.vim/bundle/YouCompleteMe/install.py --clang-completer      #Completion for C
# sudo python $MyUSER/.vim/bundle/YouCompleteMe/install.py --omnisharp-completer  #Completion for C#
# sudo python $MyUSER/.vim/bundle/YouCompleteMe/install.py --system-libclang    
# sudo python $MyUSER/.vim/bundle/YouCompleteMe/install.py --gocode-completer   #Completion for Go
# sudo python $MyUSER/.vim/bundle/YouCompleteMe/install.py --tern-completer     #Completion for JavaScript
# sudo python $MyUSER/.vim/bundle/YouCompleteMe/install.py --racer-completer    #Completion for Rust
cd $MyUSER/.vim
# Using https protocol
# git remote add origin https://bitbucket.org/supervedovatto/vim-config.git
# Using ssh protocol
git remote add origin ssh://git@bitbucket.org/supervedovatto/vim-config.git
git pull origin master

#Configura o git
echo "Configura o git*****************************************************************"

# CONFIGURA O CORRETOR ORTOGRÁTICO NO VIM
if [ ! -d $MyUSER/.vim/spell ]; then
	mkdir $MyUSER/.vim/spell
fi
spell=$MyUSER/.vim/spell
spellsave=$Vim/spell
if [ ! -d $spellsave ]; then
	echo "Realizando novo download dos pacotes de idioma do sistema ******************************"
	rm /tmp/vero_pt_br.oxt
	wget ftp://ftp.gnome.org/mirror/temp/sf2015/a/ao/aoo-extensions/1375/8/vero_pt_br_v208aoc.oxt --output-document=/tmp/vero_pt_br.oxt
	# Versão mais atual e não testada desse pacote
	# wget extensions.libreoffice.org/extension-center/vero-verificador-ortografico-e-hifenizador-em-portugues-do-brasil/pscreleasefolder.2012-01-04.1563120832/2.1.2/vero_pt_br_v212aoc.oxt --output-document=/tmp/vero_pt_br.oxt
	unzip /tmp/vero_pt_br.oxt -d /tmp
	cd /tmp
	vim -e "+mkspell pt pt_BR" +qall 
	cp $spellsave/
	cp /tmp/*.spl $spell/ 
else
	echo "Reaproveitando os pacotes de idioma do sistema *******************************"
	cp $spellsave/*.spl $spell/
fi

# supervedovatto reapropria pastas importantes
chown -R supervedovatto $MyUSER/.vim

# sudo apt-mark unhold vim
sudo apt-mark unhold vim-common

# if [ ! -f /bin/after_R_start ]; then
# 	sudo cp $Vim/after_R_start /bin/after_R_start
# 	sudo chmod +x /bin/after_R_start
# fi
