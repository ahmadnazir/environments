# --------
# COMMANDS
# --------

exec { 'install-composer':
  require => [ Package['php5'], Package['curl'] ],
  command => '/usr/bin/curl -sS https://getcomposer.org/installer | /usr/bin/php; sudo mv composer.phar /usr/local/bin/composer'
}

exec { 'install-jq':
  require => Package['curl'],
  command => '/usr/bin/curl -sS http://stedolan.github.io/jq/download/linux64/jq -o /usr/local/bin/jq'
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

package { 'man':
  require => Exec['apt-update'],
  ensure => installed,
}

package { 'phpunit':
  require => Exec['apt-update'],
  ensure => installed,
}
