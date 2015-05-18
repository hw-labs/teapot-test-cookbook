require "serverspec"
require_relative './spec_helper'

set :backend, :exec

describe file("/tmp") do
  it { should be_directory }
end

describe "port-success" do
  it "is listening on port 22" do
    expect(port(22)).to be_listening
  end
end
