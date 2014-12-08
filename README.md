## data-public

Publicly-accessible team and project data shared between [18F/18f.gsa.gov](https://github.com/18F/18f.gsa.gov), [18F/Dashboard](https://github.com/18F/Dashboard), and other projects as a git submodule.

For in-depth information on submodules, see [the Submodules chapter of the Pro Git book](http://git-scm.com/book/en/v2/Git-Tools-Submodules) and the output of `git help submodule`.

### Checking out a parent repo

The first time you clone a repository using this module, you will need to run the following commands:
```
$ git submodule init
$ git submodule update --remote
```

### Making changes to data-public directly

To make changes to this repository that do not require code changes to any projects that depend on it, you can clone it and push updates like any other GitHub repository. Use the typical 18F branch-pull request-merge workflow.

### Making changes to data-public from a parent repo (use a branch!)

First of all, ensure that your parent repo's `.gitmodules` file contains the following (assuming the submodule is installed at `_data/public`):
```
[submodule "_data/public"]
	path = _data/public
	url = git@github.com:18F/data-public.git
	branch = master
```
Then, `cd _data/public` and *create a branch for your changes*. Once your `_data/public` and supporting code changes are in-sync, use the typical 18F branch-pull request-merge workflow to push your changes upstream, then pull the submodule changes into your parent repo as per the following section.

### Pulling changes into a parent repo

Assuming the parent repository has the submodule installed at `_data/public`, execute the following to pull in the latest changes:
```
$ git submodule update --remote
```

Execute `jekyll serve` or whatever command to ensure the new changes don't break your project. You may need to `cd _data/public` and perform conflict resolution as you would with a normal repository. If/when all is OK, then execute:
```
$ git add _data/public
$ git commit -m 'Pull upstream changes into _data/public'
```

When your code changes are ready to review, issue a pull request for the parent project as normal.
