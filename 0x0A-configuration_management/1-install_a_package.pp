#!/usr/bin/pup
# Install an especific version of flask (2.1.0)
package { 'pip3':
  ensure   => installed,
  provider => 'apt',
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['pip3'],
}
