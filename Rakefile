require 'html-proofer'

task :default => [:serve]

desc "Build site."
task :build do
  sh "bundle exec jekyll build"
end

desc "Serve site."
task :serve do
  sh "bundle exec jekyll serve"
end

desc "Test site."
task :test => ["test:internal", "test:external"]

namespace :test do

  options = {
    :assume_extension => true,
    :file_ignore => [
      "./_site/Christmas_Gift_Show.html",
      "./_site/board_members.html",
      "./_site/christmas_craft_show.html",
      "./_site/fashion_show.html",
      "./_site/feb_fest.html",
      "./_site/home.html",
      "./_site/info.html"
    ]
  }

  desc "Test site and internal linking."
  task :internal => [:build] do
    HTMLProofer.check_directory(
      "./_site",
      {
        :disable_external => true,
        :check_favicon => true,
        :check_html => true
      }.merge(options)
    ).run
  end

  desc "Test external links."
  task :external => [:build] do
    HTMLProofer.check_directory(
      "./_site",
      {
        :external_only => true,
        :cache => { :timeframe => '1h' }
      }.merge(options)
    ).run
  end
end
