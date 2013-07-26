require "chefspec"

::LOG_LEVEL = :fatal
::UBUNTU_OPTS = {
  :platform => "ubuntu",
  :version => "12.04",
  :log_level => ::LOG_LEVEL
}
::REDHAT_OPTS = {
  :platform => "redhat",
  :version => "6.3",
  :log_level => ::LOG_LEVEL
}

RSpec.configure do |c|
  c.treat_symbols_as_metadata_keys_with_true_values = true
end
