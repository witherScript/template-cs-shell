#!/bin/bash

# Get the project title from the user
read -p "Enter the project title: " project_title

# Create the main solution folder
mkdir "${project_title}.Solution"
cd "${project_title}.Solution"

# Create the main project folder
mkdir "$project_title"
cd "$project_title"
mkdir Models
mkdir Controllers
mkdir Views
mkdir Properties

cd Properties
touch launchSettings.json
export launchSettings=$(cat "./template-netrouter/launchSettings.json")
echo -e "${launchSettings}" >> launchSettings.json
cd ..

touch Program.cs
export programTemplate=$(cat "./template-netrouter/ProgramTemplate.cs")
echo -e "${programTemplate}" >> Program.cs

touch "${project_title}.csproj"
export projTemplate=$(cat "./template-netrouter/ConfigTemplate.csproj")
echo -e "${projTemplate}" >> "${project_title}.csproj"


# Create the Tests folder
mkdir "${project_title}.Tests"
cd "${project_title}.Tests"
dotnet new mstest
mkdir ModelTests

cd ..
git init
read -p "Enter remote repo url: " repo_url
read -p "Enter remote alias: " repo_alias
git remote add "${repo_alias}" "${repo_url}"

touch .gitignore
echo -e "obj\nbin" >> .gitignore
git add .gitignore
git commit -m "add gitignore"
git push "${repo_alias}" main
