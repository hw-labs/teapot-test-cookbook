require "chefspec"
require "chefspec/librarian"

RSpec.configure do |config|
  config.log_level = :fatal
  output_dir = 'output'
  config.output_stream = File.open(File.join(output_dir,'chefspec_teapot.json'), 'w')
  config.formatter = 'json'
end

ChefSpec.define_matcher :sudo
