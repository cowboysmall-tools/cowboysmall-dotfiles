# General Tasks

## Private Git

Check the remote, and change if appropriate:

```
> git remote -v
origin  gitolite3@cowboysmall.com:repo-name.git (fetch)
origin  gitolite3@cowboysmall.com:repo-name.git (push)

...

> git remote set-url origin gitolite3@cowboysmall.com:repo-name.git

```

Change from master to main:

```

> git fetch --all

...

> get branch --all

* main
  master
  remotes/origin/HEAD -> origin/master
  remotes/origin/main
  remotes/origin/master

...

> git checkout main


```
