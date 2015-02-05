require_relative "spec_helper"

describe "test-cookbook" do

  let(:runner)    { ChefSpec::SoloRunner.new }
  let(:node)      { runner.node }
  let(:chef_run)  { runner.converge(described_recipe) }

  it "does not include a broken recipe" do
    expect(chef_run).not_to include_recipe("recipe::broken")
  end

  it "includes a working recipe" do
    expect(chef_run).to include_recipe("http-fail::default")
  end

end
