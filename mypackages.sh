#!/bin/bash
PURGES="abiword
	aisleriot
	emphaty
	evolution
	gnome-games-data
	gnome-games-extra-data
	gnumeric
	nano
	pidgin
	runit
	sylpheed
	thunderbird
	tomboy
	unity-lens-files
	zeitgeist
	zeitgeist-core
	zeitgeist-datahub
	zeitgeist-fts-extension"
for i in $PURGES;
do
	echo "--------------------------------------------- Unninstalling" $i
	sudo apt-get purge $i -y
done
sudo apt-get autoremove -y
sudo apt-get update -y
sudo apt-get upgrade -y

#Lista dos plicativos a setem inslatados

#As sequintes bibliotecas são necessárias para o pacote devtools do R e algumas bibliotecas do vim
Bibliotecas=(
	libatk1.0-dev
	libbonoboui2-dev
	libcairo2-dev
	libcurl4-openssl-dev
	libgnome2-dev
	libgnomeui-dev
	libgtk2.0-dev
	libncurses5-dev
	libx11-dev
	libxml2-dev
	libxpm-dev
	libxt-dev
	python-dev
	ruby-dev
    libssl-dev
);
Compactadores=(	
	lzma
	lzma-dev
	p7zip
	p7zip-full
	p7zip-rar
	rar
);
LinguagemC=(
	g++
	gsl-bin
   	cmake
	indent
);
LinguagemMaxima=(
	maxima
	wxmaxima
);
LinguagemOctave=(
	octave
	qtoctave
);
LinguagemPython=(
	python2.7
	Idle-python2.7
	python-pip
	python-numpy
    python-dev
);
# {{{Others
Others=(
	backup-manager
	bum
    evince
	calibre
	codeblocks
	curl
	default-jre
	figlet
	flashplugin-nonfree	
	git-all
	gparted	
	inkscape
	jabref
	libreoffice		
	preload	
	qtikz		
	rhythmbox
	vlc
	wine	
    build-essential
    tmux
    terminator
    wmctrl
	shotwell
	checkinstall
	zathura
	ssh
	deluge
);
# }}}
Latex=(
	texlive
	texlive-base
	texlive-bibtex-extra
	texlive-binaries
	texlive-extra-utils
	texlive-fonts-extra
	texlive-fonts-recommended
	texlive-fonts-utils
	texlive-formats-extra
	texlive-games
	texlive-generic-extra
	texlive-generic-recommended
	texlive-humanities
	texlive-lang-english
	texlive-lang-french
	texlive-lang-italian
	texlive-lang-spanish
	texlive-lang-portuguese
	texlive-latex3
	texlive-latex-base
	texlive-latex-extra
	texlive-latex-recommended
	texlive-luatex
	texlive-math-extra
	texlive-metapost
	texlive-music
	texlive-omega
	texlive-pictures
	texlive-plain-extra
	texlive-pstricks
	texlive-publishers
	texlive-science
	texlive-xetex
	biblatex
	biber
	abntex
	latex-beamer
	latexdraw
	texstudio
	writer2latex
);
KDE=(
	kmymoney
	okular
);
FullList=(
	"${Bibliotecas[@]}"
	"${Compactadores[@]}"
	"${LinguagemC[@]}"
	"${LinguagemMaxima[@]}"
	"${LinguagemOctave[@]}"
	"${LinguagemPython[@]}"
	"${Others[@]}"
	"${KDE[@]}"
	"${Latex[@]}"
);
for i in "${FullList[@]}";
do
	echo "--------------------------------------------- Installing" $i
	sudo apt-get install $i -y
done
#Instalação de Pacotes da linguagem Python
pip install ipython #IDE para python
pip install psutil #Necessária para compilar latex com o pacote ATP do vim
pip install jedi #autocomplete for python
pip install jupyter #Browser IDE for python
pip install jupyter-themer #Temas para jupyter
sudo bash $config/gitconfig.sh
sudo bash $bin/config.sh
