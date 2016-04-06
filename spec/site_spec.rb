require 'html-proofer'

describe 'Web site' do

  options = {
    :assume_extension => true,
    :file_ignore => [
      "_site/Christmas_Gift_Show.html",
      "_site/board_members.html",
      "_site/christmas_craft_show.html",
      "_site/fashion_show.html",
      "_site/feb_fest.html",
      "_site/home.html",
      "_site/info.html"
    ]
  }

  it 'outputs valid HTML' do
    status = HTMLProofer.check_directory(
      "_site",
      {
        :check_html => true,
        :checks_to_ignore => %w(ScriptCheck LinkCheck ImageCheck)
      }.merge(options)
    ).run
    expect(status).to eql(true)
  end

  it 'is a well-formed site' do
    status = HTMLProofer.check_directory(
      "_site",
      {
        :disable_external => true,
        :check_favicon => true
      }.merge(options)
    ).run
    expect(status).to eql(true)
  end

  it 'has valid external links' do
    status = HTMLProofer.check_directory(
      "_site",
      {
        :external_only => true,
        :cache => { :timeframe => '1h' }
      }.merge(options)
    ).run
    expect(status).to eql(true)
  end

end
