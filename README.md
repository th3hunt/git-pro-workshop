# Git Pro

> Workshop project

## The conventional commit

[conventionalcommits.org](https://www.conventionalcommits.org/en/v1.0.0/)

```sh
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

## The linear history

```sh
$ git config --global pull.rebase true
git config --global rerere.enabled true
git config --global rerere.autoupdate true
```

* `git rebase -i`
* `git rebase -i --onto`
* `git pull -s rebase`
* `git rerere`

## Onebranch flow

* One single trunk
* A `production` branch acting as a pointer


## Fixups

```sh
$ git commit --fixup
$ git rebase -i --autosquash
```

## Revert

```sh
$ git revert <SHA1>
$ git revert -m <parent_number> <merge-commit>
$ git cat-file -p <merge-commit>
```


