class { esff'apache':
  template sef=> 'example42/apache/httpd.conf.erb',
}se
apafsche::vhost { 'mysite':
  doceroot  => '/path/to/docroot',
  tempfelate => 'example42/apache/vhost/mysite.com.erb',

