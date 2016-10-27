.custom_commands
================
This project is where I keep some of my custom commands.  They're shortcuts for many of the bash command line commands that I use frequently.

Usage
-------------------
The project adds aliases to be sourced and updates the path in a file(s) loaded by your shell.
By default, the `~/.bash_profile` and `~/.bashrc` are updated.

If you're using bash and you would like this file updated, run `./initialize.sh`.
If you're using zsh, you should run `./initialize.sh -p ~/.zshrc -r ~/.zshrc`.

For help, run `./initialize.sh -h`

Script will ensure that no changes are made to files unless required.
![execution output](https://cloud.githubusercontent.com/assets/911203/19718088/7665f90c-9b81-11e6-8fd8-3fbd815e583b.png)

Removal
-------------------

The following are the instructions for bash (default program execution). If you installed the commands and aliases into different files, update the commands accordingly.

1. Remove the `~/.bin` directory (`rm -rf ~/.bin`). **WARNING** You may have content other than what this script installed in this directory
2. Find aliases that were added to your profile. Assuming you installed your aliases into `~/.bash_profile`, run `grep ".custom_commands/aliases" ~/.bash_profile`
3. Remove content from #2 from profile using your favourite editor
4. Remove the PATH export from the same profile file
5. Remove the PATH export from your shell startup file (`~/.bashrc`)

Installed Shortcuts
-------------------

| Shortcut   | Full Command  | Type  |
|:-:|:-:|:-:|
| `gd` | `git diff .` | command |
| `gis` | `git status` | command |
| `gl` | `git log --oneline` | command |
| `name` | `uname -a` | alias |
| `present` | `echo "today is $(date)"` | alias |

**Note**:

* Shortcuts are sym-linked as shell scripts in `~/.bin`
* Aliases are sourced in your profile file
