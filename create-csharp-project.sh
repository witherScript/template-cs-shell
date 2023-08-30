#!/bin/bash

# Get the project title from the user
read -p "Enter the project title: " project_title

# Create the main solution folder
mkdir "${project_title}.Solution"
cd "${project_title}.Solution"

# Create the main project folder
mkdir "$project_title"
cd "$project_title"
dotnet new console
mkdir Models
cd ..

# Create the Tests folder
mkdir "${project_title}.Tests"
cd "${project_title}.Tests"
dotnet new mstest
mkdir ModelsTests

cd ..
git init
read -p "Enter remote repo url: " repo_url
read -p "Enter remote alias: " repo_alias
git remote add "${repo_alias}" "${repo_url}"

touch .gitignore
echo -e "obj\nbin" >> .gitignore
git add .gitignore
git commit -m "add gitignore"
git push gs main
