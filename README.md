# dotfiles
my dotfiles

Usage
---

```bash
mkdir -p ~/.dotfiles
cd ~/.dotfiles
git init --bare
git config --bool core.bare false
git config --path core.worktree ~
git remote add origin https://your/github/repo
git fetch -t
git config status.showuntrackedfiles no
git checkout master # 如果有冲突，会切换失败
```

**Inspired by**

- https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

- https://news.ycombinator.com/item?id=11070797

- https://www.reddit.com/r/linux/comments/6s3siv/dotfiles_management_survey_results/

- https://news.ycombinator.com/item?id=11071754
