# --------
# COMMANDS
# --------

# execute 'apt-get update'
exec { 'apt-update':                    # exec resource named 'apt-update'
  command => '/usr/bin/apt-get update'  # command this resource will run
}

# --------
# PACKAGES
# --------

# install apache2 package
package { 'apache2':
  require => Exec['apt-update'],
  ensure => installed,
}

# install mysql-server package
package { 'mysql-server':
  require => Exec['apt-update'],
  ensure => installed,
}

# install php5 package
package { 'php5':
  require => Exec['apt-update'],
  ensure => installed,
}

# install php5-mysql package
package { 'php5-mysql':
  require => Package['php5'],
  ensure => installed,
}

# install php5-intl package
package { 'php5-intl':
  require => Package['php5'],
  ensure => installed,
}

# --------
# SERVICES
# --------

# ensure apache2 service is running
service { 'apache2':
  require => Package['apache2'],
  ensure => running,
}

# ensure mysql service is running
service { 'mysql':
  require => Package['mysql-server'],
  ensure => running,
}

# -----
# FILES
# -----

# ensure info.php file exists
file { '/var/www/info.php':
  ensure => file,
  content => '<?php  phpinfo(); ?>',    # phpinfo code
  require => Package['apache2'],        
} 

