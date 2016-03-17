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
task :test => [:build] do
  HTMLProofer.check_directory(
    "./_site",
    {
      :check_favicon => true,
      :check_html => true,
      :assume_extension => true,
      :cache => { :timeframe => '1h' },
      :file_ignore => [
        "./_site/Christmas_Gift_Show.html",
        "./_site/board_members.html",
        "./_site/christmas_craft_show.html",
        "./_site/fashion_show.html",
        "./_site/feb_fest.html",
        "./_site/home.html"
      ]
    }
  ).run
end
