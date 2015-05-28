# How to Work Locally

Make sure that you have installed:
* git
* VirtualBox
* Vagrant

Clone the repo:
```
> git clone https://github.com/helenaciviccenterboard/helenaciviccenterboard.github.io.git
```

Start up a virtual machine that is ready for Jekyll:
```
> cd helenaciviccenterboard.github.io
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
