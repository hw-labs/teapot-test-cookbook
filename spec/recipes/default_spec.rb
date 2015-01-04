require_relative "../spec_helper"

describe "test-cookbook" do

  let(:runner)    { ChefSpec::SoloRunner.new }
  let(:node)      { runner.node }
  let(:chef_run)  { runner.converge(described_recipe) }

  it "includes a broken recipe" do
    expect(chef_run).to include_recipe("will_not_work::_broken")
  end

  it "includes a working recipe" do
    expect(chef_run).to include_recipe("http-fail::default")
  end

end
