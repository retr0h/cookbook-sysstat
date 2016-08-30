# encoding: UTF-8

require 'chef'
require 'chefspec'
require 'chefspec/berkshelf'
require 'chefspec/deprecations'

UBUNTU_OPTS = {
  platform: 'ubuntu',
  version: '12.04'
}.freeze
REDHAT_OPTS = {
  platform: 'redhat',
  version: '6.3'
}.freeze
