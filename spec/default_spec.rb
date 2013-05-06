require "chefspec"
require "fauxhai"

describe "sysstat::default" do
  before do
    @chef_run = ::ChefSpec::ChefRunner.new.converge "sysstat::default"
  end

  it "installs package" do
    expect(@chef_run).to upgrade_package "sysstat"
  end

  it "starts service" do
    expect(@chef_run).to start_service "sysstat"
  end

  it "enables service" do
    expect(@chef_run).to set_service_to_start_on_boot "sysstat"
  end

  describe "debian platform" do
    before do
      @chef_run = ::ChefSpec::ChefRunner.new(
        :platform  => "ubuntu",
        :version   => "12.04",
        :log_level => :fatal
      ).converge "sysstat::default"
      @file = @chef_run.template "/etc/default/sysstat"
    end

    it "has proper owner" do
      expect(@file).to be_owned_by("root", "root")
    end

    it "has proper modes" do
      expect(sprintf("%o", @file.mode)).to eq "644"
    end

    it "is enabled" do
      expect(@chef_run).to create_file_with_content @file.name,
        %Q{ENABLED="true"}
    end
  end

  describe "rhel platform" do
    before do
      @chef_run = ::ChefSpec::ChefRunner.new(
        :platform  => "redhat",
        :log_level => :fatal
      ).converge "sysstat::default"
      @file = @chef_run.template "/etc/default/sysstat"
    end

    it "doesn't create file" do
      expect(@chef_run).not_to create_file @file
    end
  end
end
