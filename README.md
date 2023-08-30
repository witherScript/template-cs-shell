# template-cs-shell
a bash shell script for automating C# file structure focused on TDD

### Steps to Use this Automation tool:
1. Clone this repo to your projects folder

```bash
$ git clone https://github.com/witherScript/template-cs-shell
```
2. Navigate to directory where create-csharp-project.sh is located and run the following command:

```bash
chmod +x new-from-template.sh
# now enter either source ~/.bashrc or ~/.zshrc, depends on what terminal u use
```
The chmod command makes our .sh file executable, the last step is to add an alias so we don't have to manually execute it
```bash
$ cd
$ #either: code .zshrc or code .bashrc (or nano, vim, whatever editor you use)

```
add the following line:
```
alias "new_proj"="~/<PATH_TO_TEMPLATE>/cs-template/create-csharp-project.sh"
```

**Replace Path_to_template with the actual path to the cs-template folder, and "new_proj" with whatever alias you want to use

## How to run it
1. Navigate to the directory where the shell script is located
  ```bash
$ cd folder_containing_shell_file
  ```
2. Enter your alias to run the script

```bash
$ new_proj
$ Enter Project Title: FizzBuzz
$ Enter Remote Repo URL: <url_to_remote>
$ Enter Remote Alias: gs
```
The "Remote Alias" will determine what our git push commands look like.

In the example code snippet above, we set the alias to gs, so our pushes are as such:

```bash
$ git push gs main
```


**NOTE: this should automate file system up to the first gitignore commit

