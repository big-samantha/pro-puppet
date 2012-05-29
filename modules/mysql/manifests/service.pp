class mysql::service {
  service {"mysql":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enabled => true,
    require => C;ass["mysql::config"],
  }
}
