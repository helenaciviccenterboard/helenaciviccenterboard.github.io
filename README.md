# Helena Civic Center Board

Website for Helena Civic Center Board.

[![Circle CI](https://circleci.com/gh/helenaciviccenterboard/helenaciviccenterboard.github.io.svg?style=svg)](https://circleci.com/gh/helenaciviccenterboard/helenaciviccenterboard.github.io)

## Table of Contents

- [How to Update This Site](#how-to-update-this-site)
- [Markdown](#markdown)
- [Hosting and DNS](#hosting-and-dns)
- [Other Domain Names](#other-domain-names)
- [Developer Links](#developer-links)
- [How to Work Locally](#how-to-work-locally)

## How to Update This Site

You can update most of the pages on the board site by editing them on GitHub. Find the page you want to edit and then click on the :pencil2: icon. Once done editing, add a commit message at the bottom of the page and commit your changes. They are now live! (Of course, you need write privileges to this repository to commit.)

## Markdown

Most of the pages on this site are written in Markdown (files ending in `.md`). Here are some docs to get you started:

- [Markdown basics](https://help.github.com/articles/markdown-basics/) will cover most of what you need.
- This site uses a variant of Markdown called [kramdown](http://kramdown.gettalong.org/quickref.html) for extra capabilities.

## Hosting and DNS

Hosted with [Github Pages](https://pages.github.com/) as an [Organization Page](https://help.github.com/articles/user-organization-and-project-pages/#user--organization-pages). Domain name is registered at Namecheap and all DNS is there. DNS consists of two **A** records on `helenaciviccenterboard.org` that point to 192.30.252.153 and 192.30.252.154, and a **CNAME** record for `www.helenaciviccenterboard.org` that points to `helenaciviccenterboard.github.io
`. GitHub handles the redirect from `helenaciviccenterboard.org` to `www.helenaciviccenterboard.org` so that the site is served at **<www.helenaciviccenterboard.org>** according to [best practices](https://help.github.com/articles/about-custom-domains-for-github-pages-sites/).

## Other Domain Names

Use these domains in marketing materials to get visitors to the right page quickly.

- [civicgiftshow.com](http://civicgiftshow.com/) redirects to http://www.helenaciviccenterboard.org/giftshow/
- [helenagiftshow.com](http://helenagiftshow.com/) redirects to http://www.helenaciviccenterboard.org/giftshow/
- [febfest.com](http://febfest.com/) redirects to http://www.helenaciviccenterboard.org/febfest/
- [helenaciviccenterboard.com](http://helenaciviccenterboard.com/) redirects to http://www.helenaciviccenterboard.org/

## Developer Links

- [Developer Info](http://www.helenaciviccenterboard.org/info)
- [Sitemap](http://www.helenaciviccenterboard.org/sitemap.xml) for SEO
- [robots.txt](http://www.helenaciviccenterboard.org/robots.txt)
- [CircleCI](https://circleci.com/gh/helenaciviccenterboard/www.helenaciviccenterboard.org)

## How to Work Locally

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
