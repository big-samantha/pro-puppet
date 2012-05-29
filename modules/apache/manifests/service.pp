class apache::service {
  service { "apache2":
  ensure => running,
  hasstatus => true,
  enable => true,
  require => Class["apache::install"]
  }
}

