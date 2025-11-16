# General Tasks

## Migrating from Master to Main

Create main branch and push to remote:

```

> git branch -m master main
> git push -u origin main


```

Set HEAD to point to local main:

```

> git remote set-head origin main
> git branch -v -r

  origin/HEAD   -> origin/main
  origin/main   08daa81 c - cleaned up some files
  origin/master 8c43f79 js - login expo - some slight changes

```

Update local and remote on workstations:

```

> git fetch -a
> git checkout main
> git remote set-head origin main
> git branch -d master

```

Delete remote master branch:

```

> git push origin -d master

```

Clean up remote tracking branch on workstations:

```

> git remote prune origin

```

## Submodules

To update submodules after initial clone of repository:

```

> git submodule update --recursive --init


```

To update submodules:

```

> git submodule update --recursive --remote


```

## Gitolite Migration

Check the remote, and change if appropriate:

```
> git remote -v
origin  git@cowboysmall.com:some-repo-name.git (fetch)
origin  git@cowboysmall.com:some-repo-name.git (push)

> git remote set-url origin gitolite3@cowboysmall.com:other-repo-name.git

> git remote -v
origin  gitolite3@cowboysmall.com:other-repo-name.git (fetch)
origin  gitolite3@cowboysmall.com:other-repo-name.git (push)

```
