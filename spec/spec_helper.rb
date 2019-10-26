require "bundler/setup"
require "yaml"
require "alpharb"

RSpec.configure do |config|
  config.color = true
	config.before(:all) do
		@config = YAML::load_file(File.join(__dir__, 'config.yml'))
		@client = Alpharb::Client.new @config["key"]
	end
end
