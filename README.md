[![Circle CI](https://circleci.com/gh/helenaciviccenterboard/helenaciviccenterboard.github.io.svg?style=svg)](https://circleci.com/gh/helenaciviccenterboard/helenaciviccenterboard.github.io)

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
> rake
```

Edit in the host OS. Find the website at http://192.168.33.10:4000/

Commit changes and push to the master branch to deploy to production.

Run tests:

```
> rake test
```
