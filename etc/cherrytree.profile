# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/cherrytree.local

# cherrytree note taking application
noblacklist /usr/bin/python2*
noblacklist /usr/lib/python3*
noblacklist ${HOME}/.config/cherrytree

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
#ipc-namespace
netfilter
no3d
nogroups
nonewprivs
noroot
nosound
novideo
protocol unix,inet,inet6,netlink
seccomp
shell none
tracelog

private-dev
private-tmp

noexec ${HOME}
noexec /tmp