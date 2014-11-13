[![Build Status](http://img.shields.io/travis/retr0h/cookbook-sysstat.svg?style=flat-square)](https://travis-ci.org/retr0h/cookbook-sysstat)
[![Dependency Status](http://img.shields.io/gemnasium/retr0h/cookbook-sysstat.svg?style=flat-square)](https://gemnasium.com/retr0h/cookbook-sysstat)
[![Chef](http://img.shields.io/cookbook/v/sysstat.svg?style=flat-square)](https://supermarket.getchef.com/cookbooks/sysstat)

Description
===========

Installs/Configures sysstat

Requirements
============

* Chef 11

Attributes
==========

* default['sysstat']['settings'] - Path to default settings file.
* default['sysstat']['enabled'] - Run sysstat on boot.
* default['sysstat']['sa1_options'] - Set/Add options to the sa1 cron job.
* default['sysstat']['sa2_options'] - Set/Add options to the sa2 cron job.
* default['sysstat']['package_action'] - Choose to upgrade/install the package.

Usage
=====

```json
"run_list": [
    "recipe[sysstat]"
]
```

default
-------

Installs/Configures sysstat

Testing
=======

This cookbook is using [ChefSpec](https://github.com/acrmp/chefspec) for
testing. Should run the following before commiting. It will run your tests,
and check for lint errors.

    $ rake

License and Author
==================

Author:: John Dewey (<john@dewey.ws>)

Copyright 2012-2014, John Dewey

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
