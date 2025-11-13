# General Tasks

## Private Git

Check the remote, and change if appropriate:

```
> git remote -v
origin  git@cowboysmall.com:some-repo-name.git (fetch)
origin  git@cowboysmall.com:some-repo-name.git (push)

...

> git remote set-url origin gitolite3@cowboysmall.com:other-repo-name.git

...

> git remote -v
origin  gitolite3@cowboysmall.com:other-repo-name.git (fetch)
origin  gitolite3@cowboysmall.com:other-repo-name.git (push)

```

Create main branch ( for example, to migrate from master to main):

```

> git branch --move master main

...

> git push --set-upstream origin main


```

Change from master to main:

```

> git fetch --all

...

> git branch --all

* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/main
  remotes/origin/master

...

> git checkout main


```
