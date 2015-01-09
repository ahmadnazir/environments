import 'lamp.pp'
import 'devtools.pp'

# -----
# FILES
# -----

# ensure info.php file exists
# @todo: this is for testing if the docker container works
# properly. Should be removed later
file { '/var/www/info.php':
  ensure => file,
  content => '<?php  phpinfo(); ?>',    # phpinfo code
  require => Package['apache2'],        
} 
