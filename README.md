# Helena Civic Center Board

Website for Helena Civic Center Board.

[![Circle CI](https://circleci.com/gh/helenaciviccenterboard/helenaciviccenterboard.github.io.svg?style=svg)](https://circleci.com/gh/helenaciviccenterboard/helenaciviccenterboard.github.io)

## Table of Contents

[How to Update This Site](#how-to-update-this-site)
[Markdown](#markdown)
[Search](#search)
[Hosting and DNS](#hosting-and-dns)
[Other Domain Names](#other-domain-names)
[Email Addresses](#email-addresses)
[Developer Information](#developer-information)

## How to Update This Site

You can update most of the pages on the board site by editing them on [GitHub](https://github.com/helenaciviccenterboard/helenaciviccenterboard.github.io). Find the page you want to edit and then click on the :pencil2: icon. Once done editing, add a commit message at the bottom of the page and commit your changes. They are now live!

Of course, you need write privileges to this repository to commit. First, create a [GitHub account](https://github.com/join) and then request access to the [HCCB organization](https://github.com/helenaciviccenterboard).

### Updating personnel

The list of personnel on the [About Us](http://www.helenaciviccenterboard.org/about/) page are stored in [data files](_data). Update the [.yml](https://en.wikipedia.org/wiki/YAML) files to update person data and ordering. Images referenced in the data files should be stored in [/img/person/](/img/person/).

## Markdown

Most of the pages on this site are written in Markdown (files ending in `.md`). Here are some docs to get you started:

- [Markdown basics](https://help.github.com/articles/markdown-basics/) will cover most of what you need.
- This site uses a variant of Markdown called [kramdown](http://kramdown.gettalong.org/quickref.html) for extra capabilities.

## Search

[Search engine appearance](https://www.google.com/?gws_rd=ssl#q=site:www.helenaciviccenterboard.org) can be monitored and administered via [Google Webmaster Tools](https://www.google.com/webmasters/). If there are problems with pages missing from the index request re-indexing via the [sitemap](http://www.helenaciviccenterboard.org/sitemap.xml). Use [robots.txt](http://www.helenaciviccenterboard.org/robots.txt) to indicate pages that should not be indexed.

## Hosting and DNS

Hosted with [Github Pages](https://pages.github.com/) as an [Organization Page](https://help.github.com/articles/user-organization-and-project-pages/#user--organization-pages). Domain name is registered at [Namecheap](https://www.namecheap.com/) and all DNS is there. DNS consists of two **A** records on `helenaciviccenterboard.org` that point to 192.30.252.153 and 192.30.252.154, and a **CNAME** record for `www.helenaciviccenterboard.org` that points to `helenaciviccenterboard.github.io
`. GitHub handles the redirect from `helenaciviccenterboard.org` to `www.helenaciviccenterboard.org` so that the site is served at [**www.helenaciviccenterboard.org**]( http://www.helenaciviccenterboard.org/) according to [best practices](https://help.github.com/articles/about-custom-domains-for-github-pages-sites/).

## Other Domain Names

Use these domains in marketing materials to get visitors to the right page quickly:

- [civicgiftshow.com](http://civicgiftshow.com/) redirects to http://www.helenaciviccenterboard.org/giftshow/
- [helenagiftshow.com](http://helenagiftshow.com/) redirects to http://www.helenaciviccenterboard.org/giftshow/
- [febfest.com](http://febfest.com/) redirects to http://www.helenaciviccenterboard.org/febfest/
- [helenaciviccenterboard.com](http://helenaciviccenterboard.com/) redirects to http://www.helenaciviccenterboard.org/

## Email Addresses

Use these emails in marketing materials:

- <artwear@helenaciviccenterboard.org> forwards to <dooditz@bresnan.net>
- <febfest@helenaciviccenterboard.org> forwards to <helenafebfest@gmail.com>
- <giftshow@helenaciviccenterboard.org> forwards to <civiccentercraftshow@gmail.com>
- <info@helenaciviccenterboard.org> forwards to <dooditz@bresnan.net>

## Developer Information

- [Site Info](http://www.helenaciviccenterboard.org/info)
- [CircleCI](https://circleci.com/gh/helenaciviccenterboard/helenaciviccenterboard.github.io)
- Social Media:
  - Open Graph (Facebook) [Documentation](https://developers.facebook.com/docs/sharing/webmasters), [Object Debugger](https://developers.facebook.com/tools/debug/)
  - Structured Data (Google) [Documentation](https://developers.google.com/structured-data/), [Testing Tool](https://developers.google.com/structured-data/testing-tool/)
  - Twitter Cards: [Documentation](https://dev.twitter.com/cards/overview), [Validator](https://cards-dev.twitter.com/validator)
- [Jekyll best practices](http://ben.balter.com/jekyll-style-guide/)

### How to Work Locally on Linux/MacOS

* [Install rbenv](https://github.com/rbenv/rbenv#installation)
* [Install ruby-build](https://github.com/rbenv/ruby-build#installation)

Clone the repo:
```
> git clone https://github.com/helenaciviccenterboard/helenaciviccenterboard.github.io.git
```

Install Jekyll:
```sh
> cd helenaciviccenterboard.github.io
> bundle install
```

Start Jekyll server:
```
> rake
```

Edit and view changes at http://localhost:4000/

Run tests:

```
> rake test
```

Commit changes and push to the `master` branch to deploy to production.
