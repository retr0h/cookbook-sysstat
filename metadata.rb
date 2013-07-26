name             "sysstat"
maintainer       "John Dewey"
maintainer_email "john@dewey.ws"
license          "Apache 2.0"
description      "Installs/Configures sysstat"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.2.1"

recipe           "sysstat", "Installs/Configures sysstat"

%w{ debian ubuntu }.each do |os|
  supports os
end
