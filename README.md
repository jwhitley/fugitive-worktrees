# Test repo for vim-fugitive support for git-worktrees

This repo contains a Vagrantfile that creates a clean test environment for
reproducing a problem with `:Gcommit` that's preventing `git worktree` (in git
v2.5.0 or later) support from landing.

See [tpope/vim-fugitive#671](https://github.com/tpope/vim-fugitive/pull/671).

**Quick setup**

1.  Install [VirtualBox](https://www.virtualbox.org/)
2.  Install [Vagrant](https://www.vagrantup.com/)
3.  Clone this repo
4.  `cd fugitive-test`
5.  `vagrant up`
6.  `vagrant ssh`
7.  Follow the repro notes by @jwhitley outlined in the issue linked above.
