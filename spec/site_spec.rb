require 'html-proofer'

describe 'Web site' do

  it 'outputs valid HTML' do
    status = HTMLProofer.check_directory(
      "_site",
      {
        :check_html => true,
        :checks_to_ignore => %w(ScriptCheck LinkCheck ImageCheck)
      }
    ).run
    expect(status).to eql(true)
  end

  it 'is a well-formed site' do
    status = HTMLProofer.check_directory(
      "_site",
      {
        :disable_external => true,
        :assume_extension => true,
        :check_favicon => true,
        :check_opengraph => true,
        :file_ignore => [
          "_site/Christmas_Gift_Show.html",
          "_site/board_members.html",
          "_site/christmas_craft_show.html",
          "_site/fashion_show.html",
          "_site/feb_fest.html",
          "_site/home.html"
        ],
        :url_ignore => [/blob/]
      }
    ).run
    expect(status).to eql(true)
  end

  it 'has valid external links' do
    status = HTMLProofer.check_directory(
      "_site",
      {
        :external_only => true,
        :cache => { :timeframe => '1h' },
        :url_ignore => [ /localhost/ ],
        :file_ignore => [ "_site/info.html" ]
      }
    ).run
    expect(status).to eql(true)
  end

end
