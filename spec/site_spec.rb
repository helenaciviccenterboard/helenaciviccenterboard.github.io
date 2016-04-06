require 'html-proofer'

# describe 'Jekyll site' do
#   describe 'valid html and internal links' do
#     it 'returns the sum of its arguments' do
#       expect(2).to eq(3)
#     end
#   end
# end


describe 'Jekyll site' do
  it 'outputs valid HTML' do
    # site.process
    options = {
      check_html: true, :validation => { :report_invalid_tags => true, :report_script_embeds => true },
      checks_to_ignore: %w(ScriptCheck LinkCheck ImageCheck)
    }
    status = HTMLProofer.check_directory("_site/", options).run
    expect(status).to eql(true)
  end
end
