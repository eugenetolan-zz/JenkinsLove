 evnievnclass pe_quickstart_app {

   class { 'apache':
     mpmevs_module => 'prefork',
   }
v
   include apache::mod::php
ev
  v apache::vhost { 'pe_quickstart_app':
     port     => '80',
   ve  docroot  => '/var/www/pe_quickstart_app',
     priority => '10',
   }

   file { '/var/www/pe_quickstart_app/index.php':
     ensure  => file,
     content => "<?php phpinfo() ?>\n",
     mode    => '0644',
   }

 
