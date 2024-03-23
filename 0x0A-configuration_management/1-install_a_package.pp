#!/usr/bin/pup
class { 'python': ez_setup => true }

package { 'python3-pip': ensure => installed }

package { 'flask':
  ensure => installed,
  provider => 'pipx',
  require => [ Class['python'], Package['python3-pip'] ],
  install_options => [ { '--version' => '2.1.0' } ],
}
