[![Build Status](https://travis-ci.org/retr0h/cookbook-sysstat.png?branch=master)](https://travis-ci.org/retr0h/cookbook-sysstat)
[![Dependency Status](https://gemnasium.com/retr0h/cookbook-sysstat.png)](https://gemnasium.com/retr0h/cookbook-sysstat)

Description
===========

Installs/Configures sysstat

Requirements
============

* Chef 0.8+

Attributes
==========

* default['sysstat']['settings'] - Path to default settings file.
* default['sysstat']['enabled'] - Run sysstat on boot.
* default['sysstat']['history'] - Defaults to 7 days

Usage
=====

```json
"run_list": [
    "recipe[sysstat]"
]
```

default
----

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

Copyright 2012-2013, John Dewey

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
