#!/usr/bin/pup
# Define a resource class for managing pip packages
class { 'pip3' : }

# Define a resource to install Flask 2.1.0
resource  { 'pip3::package' {
  name      => 'Flask'
  ensure    => '2.1.0'
  provider  => 'pip3'
}
}
