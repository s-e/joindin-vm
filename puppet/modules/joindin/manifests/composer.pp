class joindin::composer() {
    exec { 'composer': 
        command => "/usr/bin/curl -sS https://getcomposer.org/installer | /usr/bin/php && \
                mv composer.phar /usr/local/bin/composer", 
        require => [Package['php']], 
        creates => "/usr/local/bin/composer",
    }
}
