# ------------------------------------------------------
# file:     $HOME/.config/zsh/.zshrc
# author:   Ramon Solis www.ramonsolis.net
# modified: Nov 2017
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=sh:
# ------------------------------------------------------

# ----------------
# Source zsh files 
#-----------------
ZDOTDIR="${HOME}/.config/zsh"
[[ -r ${ZDOTDIR}/{aliases,functions,prompt} ]] 
    for i in ${ZDOTDIR}/{aliases,functions,prompt}; do
        . $i
    done

# -------
# History
# -------
export HISTFILE=${ZDOTDIR}/history
export HISTSIZE=9999
export SAVEHIST=${HISTSIZE}

# ----------
# Completion
# ----------
zstyle :compinstall filename "${HOME}/.config/zsh/zshrc"
autoload -Uz compinit
compinit
autoload -U incremental-complete-word
zmodload zsh/complist 

zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ${ZDOTDIR}/zshcache
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*' menu yes 
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*'   force-list always
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# -----
# Paths
# -----
export PATH="/bin:/sbin:/usr/bin:/usr/sbin:$HOME/.config/scripts:$HOME/.composer/vendor/bin:$HOME/Android/Sdk/platform-tools:$HOME/Android/Sdk/tools:$PATH"
export CDPATH="$HOME/:/usr/share:$HOME/Apps"

# ------
# Colors
# ------
if [[ $TERM != "linux" ]]; then
    export GREP_COLORS="38;5;230:sl=38;5;240:cs=38;5;100:mt=33;1;38;5;161:fn=38;5;197:ln=38;5;212:bn=38;5;44:se=38;5;166"
    eval `dircolors -b $HOME/.dircolors`
fi

# -------
# Options
# -------
setopt extended_glob             # Extended glob 
setopt interactive_comments      # Allow comments in shells
setopt auto_cd                   # Change directory magic
setopt complete_in_word          # 
setopt no_beep                   # Don't beep on errors
setopt hist_ignore_all_dups      # Ignore all duplicates in history
setopt hist_ignore_space         # Ignore commands preceding by white space in history
setopt hist_reduce_blanks        # Remove blanks from history
setopt correct_all               # Command correction in a line
setopt promptsubst               
setopt no_clobber                # Don't overwrite files when redirect
setopt always_to_end             # When complete from middle, move cursor
setopt MULTIOS
setopt auto_pushd                # cd = pushd
#setopt pushd_silent
#setopt pushd_to_home

# --------
# ENV VARS
# --------
export EDITOR='/usr/bin/vim'                            \
       VISUAL='/usr/bin/vim'                            \
       BROWSER='iceweasel'                              \
       SHELL='/bin/zsh'                                 \
       LANG='en_US.UTF-8'                               \
       LC_COLLATE='en_US.UTF-8'                         \
       LC_CTYPE='en_US.UTF-8'                           \
       LESSCHARSET='UTF-8'                              \
       OPERAPLUGINWRAPPER_PRIORITY=0                    \
       OPERA_KEEP_BLOCKED_PLUGIN=1                      \
       GDK_NATIVE_WINDOWS=1                             \
       SIMPLE_BACKUP_SUFFIX="_`date +%F`"               \
       RXVT_SOCKET="$HOME/.urxvt/tmp"                   \
       WM='i3'                                          \
       JAVA_HOME="/usr/local/java/jdk1.8.0_60" 		    \
       JRE_HOME="$JAVA_HOME/jre"                        \
       VIMPERATOR_INIT=":source $HOME/.config/vimperator/vimperatorrc" \
       VIMPERATOR_RUNTIME="$HOME/.config/vimperator"    \
       VIMINIT='let $MYVIMRC="$HOME/.config/vim/vimrc" | source $MYVIMRC'        \




# ------------
# Key bindings
# ------------
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e[8~" end-of-line            
bindkey "\e[7~" beginning-of-line      
# -------
# Vi mode
# -------
bindkey -v
bindkey -M viins ' '  magic-space                
bindkey -M viins '^a' beginning-of-line
bindkey -M viins '^b' backward-word
bindkey -M viins '^e' end-of-line
bindkey -M viins '^f' forward-word
bindkey -M viins '^i' expand-or-complete-prefix 
bindkey -M viins '^n' down-line-or-history
bindkey -M viins '^p' up-history
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M viins '^w' backward-delete-word
bindkey -M viins '^y' yank
bindkey -M viins '^z' undo

# -----------------------
# Colors in TTY (Zenburn)
# -----------------------
if [[ ${TERM} == "linux" && ${+DISPLAY} == 0 ]]; then
    echo -en "\e]P01e2320" # zen-black (norm. black)
    echo -en "\e]P8709080" # zen-bright-black (norm. darkgrey)
    echo -en "\e]P1705050" # zen-red (norm. darkred)
    echo -en "\e]P9dca3a3" # zen-bright-red (norm. red)
    echo -en "\e]P260b48a" # zen-green (norm. darkgreen)
    echo -en "\e]PAc3bf9f" # zen-bright-green (norm. green)
    echo -en "\e]P3dfaf8f" # zen-yellow (norm. brown)
    echo -en "\e]PBf0dfaf" # zen-bright-yellow (norm. yellow)
    echo -en "\e]P4506070" # zen-blue (norm. darkblue)
    echo -en "\e]PC94bff3" # zen-bright-blue (norm. blue)
    echo -en "\e]P5dc8cc3" # zen-purple (norm. darkmagenta)
    echo -en "\e]PDec93d3" # zen-bright-purple (norm. magenta)
    echo -en "\e]P68cd0d3" # zen-cyan (norm. darkcyan)
    echo -en "\e]PE93e0e3" # zen-bright-cyan (norm. cyan)
    echo -en "\e]P7dcdccc" # zen-white (norm. lightgrey)
    echo -en "\e]PFffffff" # zen-bright-white (norm. white)
fi


PATH="/home/ramon/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/ramon/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ramon/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ramon/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ramon/perl5"; export PERL_MM_OPT;
