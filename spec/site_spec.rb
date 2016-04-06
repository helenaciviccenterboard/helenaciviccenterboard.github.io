describe 'Jekyll site' do
  describe 'valid html and internal links' do
    it 'returns the sum of its arguments' do
      expect(2).to eq(3)
    end
  end
end


describe 'Jekyll site' do
  it 'outputs valid HTML' do
    # site.process
    options = {
      check_html: true,
      checks_to_ignore: %w(ScriptCheck LinkCheck ImageCheck)
    }
    status = HTML::Proofer.new(dest_dir, options).run
    expect(status).to eql(true)
  end
end

# just get rspec to do something!!!! that fails and see how that looks locally and in circle :)
