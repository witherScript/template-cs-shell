# template-cs-shell
a bash shell script for automating C# file structure focused on TDD

### Steps to Use this Automation tool:
1. **Clone this repo** to your projects folder

```bash
$ git clone https://github.com/witherScript/template-cs-shell
```
2. **Navigate to directory** where **create-csharp-project.sh** is located and run the following command:

```bash
chmod +x new-from-template.sh
```

3. The chmod command makes our .sh file executable, the next step is to **add an alias** to our terminal config gile so we don't have to manually execute it
```bash
$ cd
```

## Editing your shell profile

Confused about which .*rc file you should edit? enter the following command:
```bash
which $SHELL
```
- If the output is **usr/bin/zsh**: edit the **.zshrc** file in your _~ directory_, or create one if you don't have a .zshrc file already

- If the output is **usr/bin/bash**: edit the **.bashrc** file in your _~ directory_, or create one if you don't already see it 
after running ```bash $ ls -a```

- Now **open .zshrc or  .bashrc in the editor or IDE** of your choice, the following command opens .zshrc in VSCode

```bash
$ code .zshrc
```

5. Next, **add the following line to your .zshrc/.bashrc**
```
alias "new_proj"="~/<PATH_TO_TEMPLATE>/cs-template/create-csharp-project.sh"
```

**Replace Path_to_template with the actual path to the cs-template folder,** and "new_proj" with whatever alias you want to use

## How to run it
1. Navigate to the directory where the shell script is located
  ```bash
$ cd folder_containing_shell_file
  ```
2. Enter your alias to run the script (note: the string "new_proj" means when we enter new_proj in the same directory as our .sh file, it will execute the shell script

```bash
$ new_proj
$ Enter Project Title: FizzBuzz
$ Enter Remote Repo URL: <url_to_remote>
$ Enter Remote Alias: gs
```
_The "Remote Alias" will determine what our git push commands look like._

In the example code snippet above, we set the alias to **gs**, so our git pushes will match the following format:

```bash
$ git push gs main
```

**this should automate the C# dependency config up to the first gitignore commit**

