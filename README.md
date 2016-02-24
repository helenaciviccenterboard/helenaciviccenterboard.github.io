[![Circle CI](https://circleci.com/gh/helenaciviccenterboard/helenaciviccenterboard.github.io.svg?style=svg)](https://circleci.com/gh/helenaciviccenterboard/helenaciviccenterboard.github.io)

# How to Work Locally

* [Install rbenv](https://github.com/rbenv/rbenv#installation)
* [Install ruby-build](https://github.com/rbenv/ruby-build#installation)

Clone the repo:
```
> git clone https://github.com/helenaciviccenterboard/helenaciviccenterboard.github.io.git
```

[Install Jekyll](https://help.github.com/articles/using-jekyll-with-pages/) (first time only):
```
> cd helenaciviccenterboard.github.io
> bundle install
```

Start Jekyll server:
```
> rake
```

Edit and view changes at http://localhost:4000/

Commit changes and push to the master branch to deploy to production.

Run tests:

```
> rake test
```
