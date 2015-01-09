# @todo: depends on the apt-update

# --------
# PACKAGES
# --------

package { 'git':
  require => Exec['apt-update'],
  ensure => installed,
}

package { 'curl':
  require => Exec['apt-update'],
  ensure => installed,
}

