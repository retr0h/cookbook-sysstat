describe_recipe "cookbook-sysstat" do
  include ::MiniTest::Chef::Assertions
  include ::MiniTest::Chef::Context
  include ::MiniTest::Chef::Resources

  describe "package" do
    it "installs" do
      package("sysstat").must_be_installed
    end
  end

  describe "services" do
    ##
    # Doesn't seem to run as a daemon.

    #it "runs as a daemon" do
    #  service("sysstat").must_be_running
    #end

    it "boots on startup" do
      service("sysstat").must_be_enabled
    end
  end

  describe "files" do
    let(:config) { file node['sysstat']['settings'] }

    it { config.must_include 'ENABLED="true"' }

    ##
    # Awaiting 10.14.0
    # http://tickets.opscode.com/browse/CHEF-3235

    #describe "has proper modes" do
    #  it { config.must_have(:mode, "644") }
    #  it { config.must_have(:owner, "root") }
    #  it { config.must_have(:group, "root") }
    #end
  end
end
