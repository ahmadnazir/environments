# --------
# COMMANDS
# --------

exec { 'apt-update':                    # exec resource named 'apt-update'
  command => '/usr/bin/apt-get update'  # command this resource will run
}

# --------
# PACKAGES
# --------

package { 'apache2':
  require => Exec['apt-update'],
  ensure => installed,
}

package { 'mysql-server':
  require => Exec['apt-update'],
  ensure => installed,
}

package { 'php5':
  require => Exec['apt-update'],
  ensure => installed,
}

package { 'php5-mysql':
  require => Package['php5'],
  ensure => installed,
}

package { 'php5-intl':
  require => Package['php5'],
  ensure => installed,
}

package { 'php5-curl':              # @todo: move it to devtools?
  require => Package['php5'],
  ensure => installed,
}

# memcache related
package { 'php5-memcache':
  require => Package['php5'],
  ensure => installed,
}
package { 'pkg-config':
  require => Exec['apt-update'],
  ensure => installed,
}

# @todo: not sure if this should be here..
package { 'acl':
  require => Exec['apt-update'],
  ensure => installed,
}

# --------
# SERVICES
# --------

service { 'apache2':
  require => Package['apache2'],
  ensure => running,
}

service { 'mysql':
  require => Package['mysql-server'],
  ensure => running,
}
