# encoding: UTF-8
#
# Cookbook Name:: sysstat
# Recipe:: default
#
# Copyright 2012-2016, John Dewey
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
default['sysstat']['package_action'] = 'upgrade'
default['sysstat']['crontab'] = nil

# /etc/default/sysstat
default['sysstat']['default'] = File.join(
  File::SEPARATOR, 'etc', 'default', 'sysstat'
)
default['sysstat']['enabled'] = 'true'
default['sysstat']['sa1_options'] = '-S DISK'
default['sysstat']['sa2_options'] = ''

# /etc/sysstat/sysstat
default['sysstat']['sysstat'] = File.join(
  File::SEPARATOR, 'etc', 'sysstat', 'sysstat'
)
default['sysstat']['history'] = 7
default['sysstat']['compress_after'] = 10
default['sysstat']['sadc_options'] = ''
