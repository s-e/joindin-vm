joindin::composer() {
    exec { 'composer': 
        command => "/usr/bin/curl -sS https://getcomposer.org/installer | /usr/bin/php && \
                mv composer.phar /usr/local/bin/composer", 
        require => [Package['php'], Package['php-pear']], 
        creates => "/usr/local/bin/composer",
    }
}
