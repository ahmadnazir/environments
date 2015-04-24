

# import 'devtools.pp'

# # -----
# # FILES
# # -----

# # ensure info.php file exists
# # @todo: this is for testing if the docker container works
# # properly. Should be removed later
# file { '/var/www/info.php':
#   ensure => file,
#   content => '<?php  phpinfo(); ?>',    # phpinfo code
#   require => Package['apache2'],
# }

# # --------------------
# # APPLICATION SPECIFIC
# # --------------------

# exec { 'update-apache-configuration-document-root':
#   require => Package['apache2'],
#   command => "/bin/sed s@'/var/www'@'/vagrant/web'@g -i /etc/apache2/sites-enabled/000-default"
# }



# class { "nginx":
#   # worker_connections => 4096, # the default value 1024 cannot match the needs of a large site
#   # keepalive_timeout => 120, # increase this according to your app's responde time
#   # client_max_body_size => '200m', # increase this while your nginx works as an upload server.
# }
