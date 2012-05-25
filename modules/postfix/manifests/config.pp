class postfix::config {
  File {
    owner => "postfix",
    group => "postfix",
    mode => 0644,
  }
  
  $require = Class["postfix::install"]
  
    file { "/etc/postfix/master.cf":
      ensure => present,
      source => "puppet:///modules/postfix/master.cf",
      notify => Class["postfix::service"],
    }

    file { "/etc/postfix/main.cf":
      ensure => present,
      content => template("postfix/main.cf.erb")
      notify => Class["postfix::service"],
    }
}
