# $FreeBSD: src/share/skel/dot.shrc,v 1.2 1999/08/28 00:21:54 peter Exp $
#
# .shrc - bourne shell startup file 
#
# This file will be used if the shell is invoked for interactive use and
# the environment variable ENV is set to this file.
#
# see also sh(1), environ(7).
#


# file permissions: rwxr-xr-x
#
umask	022

# Uncomment next line to enable the builtin emacs(1) command line editor
# in sh(1), e.g. C-a -> beginning-of-line.

set -o emacs

PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/X11R6/bin:/usr/X11R6/sbin:/usr/X11R6/local/bin:/usr/X11R6/local/sbin:/.rvm/bin:"

# some useful aliases
alias h='fc -l'
alias j=jobs
alias ll='ls -laFo'
alias lf='ls -F'
alias cp='cp -ip'
alias mv='mv -i'
alias rm='rm -i'
alias mplayer='mplayer -vf pp=hb/vb/dr/al/lb/tn:1:2:3'


#alias jman='LANG=ja_JP.eucJP \man'
alias jman='LANG=ja_JP.UTF8 \man'
alias man='LANG=C man'
#alias vim='/usr/bin/canfep /usr/bin/vim'
#alias vi='/usr/bin/nvi'
alias vi='/usr/bin/vim'

export EDITOR=vim
export PAGER=less
#export PAGER=lv
#export PAGER=jless
#export LANG=ja_JP.eucJP
export LANG=ja_JP.UTF-8
export JLESSCHARSET=japanese
export EPREFIX="/Gentoo"

# # set prompt: ``username@hostname$ '' 
PS1="`hostname | sed 's/\..*//'`"
case `id -u` in
	0) PS1="${PS1}# ";;
	*) PS1="${PS1}$ ";;
esac

# search path for cd(1)
# CDPATH=.:$HOME

export PATH=/Applications/SenchaSDKTools-2.0.0-beta3:$PATH

export SENCHA_SDK_TOOLS_2_0_0_BETA3="/Applications/SenchaSDKTools-2.0.0-beta3"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
