require "chefspec"
require "fauxhai"

describe "sysstat::default" do
  before do
    @chef_run = ::ChefSpec::ChefRunner.new.converge "sysstat::default"
  end

  it "installs package" do
    @chef_run.should upgrade_package "sysstat"
  end

  it "starts service" do
    @chef_run.should start_service "sysstat"
  end

  it "enables service" do
    @chef_run.should set_service_to_start_on_boot "sysstat"
  end

  describe "debian platform" do
    before do
      ::Fauxhai.mock platform:"ubuntu", version:"12.04"
      #::Fauxhai.mock platform:"debian", version:"6.0.5"
      @chef_run = ::ChefSpec::ChefRunner.new.converge "sysstat::default"
      @file = "/etc/default/sysstat"
    end

    it "has proper owner" do
      @chef_run.template(@file).should be_owned_by("root", "root")
    end

    it "has proper modes" do
      m = @chef_run.template(@file).mode

      sprintf("%o", m).should == "644"
    end

    it "is enabled" do
      @chef_run.should create_file_with_content @file,
        %Q{ENABLED="true"}
    end
  end

  describe "rhel platform" do
    before do
      ::Fauxhai.mock platform:"centos", version:"6.3"
      @chef_run = ::ChefSpec::ChefRunner.new.converge "sysstat::default"
      @file = "/etc/default/sysstat"
    end
  end

  it "doesn't create file" do
    @chef_run.should_not create_file @file
  end
end
