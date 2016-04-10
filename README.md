# ForemanApiV3

Plugin for Foreman API v3, which is based on v2 controllers but uses the response format according to the [jsonapi.org  specification](http://www.jsonapi.org).

## Installation

See [How_to_Install_a_Plugin](http://projects.theforeman.org/projects/foreman/wiki/How_to_Install_a_Plugin)
for how to install Foreman plugins

```ruby
gem 'foreman_api_v3', :git => 'https://github.com/fusor/foreman_api_v3.git
```

## Usage

```
GET http://example.com/api/v3/hosts
```

## Format

The foremat changes from v2 to v3 over v2 are in four main areas as follows:

#### 1) Create non-nested routes in v3 that don't exist in v2

```
POST /api/v2/puppetclasses/33/smart_class_parameters/44/override_values
```

```
POST /api/v3/override_values?puppetclass_id=33&smart_class_parameter_id=44
```

#### 2) Create root nodes according to object name

For Collections

```
GET /api/v2/domains

  { results: [{
      ...
      }
    ]
  }
```

```
GET /api/v3/domains

  { domains: [{
      ...
      }
    ]
  }
```

For Single Objects

```
GET /api/v2/domains/1

  { id: 1,
      ...
  }
```

```
GET /api/v3/domains
  { domain: {
      id: 1,
      ...
      }
  }
```


#### 3) Side loading instead of child nodes

GET /api/v2/hostgroups/1

```
{
    "id": 1,
    "name": "base",
    "puppetclasses": [
        {
            "id": 421,
            "name": "apache2::php",
            "module_name": "apache2"
        },
        {
            "id": 1162,
            "name": "apache::mod::cgi",
            "module_name": "apache"
        }
    ]
}
```

```
GET /api/v3/hostgroups/1

{
    "hostgroup": {
        "id": 1,
        "name": "Base",
        "puppetclass_ids": [
            421,
            1162
         ]
     },
    ],
    "puppetclasses": [
        {
            "id": 421,
            "name": "apache2::php",
            "created_at": "2012-07-01T10:00:16+03:00",
            "updated_at": "2015-02-04T13:28:37+02:00"
        },
        {
            "id": 1162,
            "name": "apache::mod::cgi",
            "created_at": "2014-01-27T15:48:57+02:00",
            "updated_at": "2015-02-04T13:28:39+02:00"
        }
    ]
}
```

#### 4) Error Responses

TBD

## Contributing

Fork and send a Pull Request. Thanks!

## Copyright

Copyright (c) *year* *your name*

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

