include_recipe 'http-fail'


package "will_fail"

remote_file "broken" do
  source "http://localhost/this/will/surely/fail.txt"
end
