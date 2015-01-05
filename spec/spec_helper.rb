require "chefspec"
require "chefspec/librarian"

RSpec.configure do |config|
  config.log_level = :fatal
  output_dir = 'output'
  Dir.new(output_dir)
  config.output_stream = File.open(File.join(output_dir,'chefspec.json'), 'w')
  config.formatter = 'json'
end

ChefSpec.define_matcher :sudo
