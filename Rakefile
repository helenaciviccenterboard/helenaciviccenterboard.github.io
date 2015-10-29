require 'html/proofer'

task :default => [:serve]

desc "build site"
task :build do
  sh "bundle exec jekyll build"
end

desc "serve site"
task :serve do
  sh "bundle exec jekyll serve --force_polling"
end

desc "test site"
task :test => [:build] do
  HTML::Proofer.new(
    "./_site",
    {
      :check_favicon => true,
      :check_html => true,
    }
  ).run
end
