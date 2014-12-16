#! /bin/sh -x
rm team.yml pif_projects.yml projects.yml
wget https://raw.githubusercontent.com/18F/18f.gsa.gov/staging/_data/team.yml
wget https://raw.githubusercontent.com/18F/18f.gsa.gov/staging/_data/projects.yml -O pif_projects.yml
wget https://raw.githubusercontent.com/18F/dashboard/gh-pages/_data/projects.yml
