class Jekyll::Converters::Markdown::MyCustomProcessor
  def initialize(config)
    require 'octokit'
    @client = Octokit::Client.new()
  end

  def convert(content)
    @client.markdown(content, :mode => "gfm")
  end
end
