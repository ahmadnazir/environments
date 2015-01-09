# --------
# COMMANDS
# --------

exec { 'install-composer':
  require => [ Package['php5'], Package['curl'] ],
  command => '/usr/bin/curl -sS https://getcomposer.org/installer | /usr/bin/php; sudo mv composer.phar /usr/local/bin/composer'
}

# --------
# PACKAGES
# --------
# @todo: depends on the apt-update

package { 'git':
  require => Exec['apt-update'],
  ensure => installed,
}

package { 'curl':
  require => Exec['apt-update'],
  ensure => installed,
}

