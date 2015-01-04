require "serverspec"
require_relative './spec_helper'

set :backend, :exec

describe file("/tmp") do
  it { should be_directory }
end

describe "port-fail" do
  it "is listening on port 79" do
    expect(port(79)).to be_listening
  end
end
