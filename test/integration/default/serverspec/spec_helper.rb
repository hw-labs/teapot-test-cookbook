RSpec.configure do |c|
  output_dir = '/tmp/output'
  Dir.mkdir(output_dir) unless Dir.exist?(output_dir)
  c.output_stream = File.open(File.join(output_dir,'serverspec_teapot.json'), 'w')
  c.formatter = 'json'
end
