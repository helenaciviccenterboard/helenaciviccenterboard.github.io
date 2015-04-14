# SAF Websites

For each website at SAF, create a new Github organization named for the site. By making each site its own organization we can control access to a site's repo if necessary. Once an organization is created, **clone** this repo `safmt/ghpages` into the new organization and rename it to work with Github Pages. Here's the step by step:

1. Create a [new organization](https://github.com/organizations/new) on GitHub with a good name, i.e. `masfaa` for MASFAA.
2. Use the [GitHub Importer](https://import.github.com/new/?import_url=https://github.com/safmt/ghpages/) to clone `safmt/ghpages`:
  1. Choose the new organization as the owner, i.e. `masfaa`.
  2. Name the repo to the name of the organization plus ".github.io", i.e. `masfaa.github.io`.
4. Once imported, edit the new README.md to remove this top section and update the organization name in the how to below.

# How to Work Locally

Make sure that you have installed:
* git
* VirtualBox
* Vagrant

Clone the repo:
```
> git clone https://github.com/[organization]/[organization].github.io.git
```

Start up a virtual machine that is ready for Jekyll:
```
> cd [organization].github.io
> vagrant up
> vagrant ssh
> cd jekyll
```

[Install Jekyll](https://help.github.com/articles/using-jekyll-with-pages/) (first time only):
```
> bundle install
```

Start Jekyll server:
```
> bundle exec jekyll serve --host 0.0.0.0 --force_polling
```

Edit in the host OS. Find the website at http://192.168.33.10:4000/

Commit changes and push to the master branch to deploy to production.
