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

package { 'php5':
  require => Exec['apt-update'],
  ensure => installed,
}

package { 'php5-intl':
  require => Package['php5'],
  ensure => installed,
}

# --------
# SERVICES
# --------

service { 'apache2':
  require => Package['apache2'],
  ensure => running,
}
