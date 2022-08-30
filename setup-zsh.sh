#This is a simple shell script to install and configure zsh.  
#This should work with debian based OS's, I am currently working with this with popOS! 22.04 LTS.
#I will attempt to keep a list of OS versions which I have tested this on as I go
#currently works with POPOS 22.04 LTS, 

#I am not an expert, I do have some programing knowlege from years past There will be mistakes, thank you.

#setup directories
mkdir $HOME/.zsh
mkdir $HOME/.cache

#setup files 
touch $HOME/.cache/zshhistory

#install packages used
sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting autojump


#get powerlevel10k from github and put it in the .zsh directory
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k


#get .zshrc and aliasrc files from the repository. adds .zshrc to HOME directory
#adds aliasrc to .zsh directory
curl -o $HOME/ https://raw.githubusercontent.com/seifried7/zsh/master/.zshrc
curl -o $HOME/.zsh/ https://raw.githubusercontent.com/seifried7/zsh/master/aliasrc
