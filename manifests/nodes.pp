class base {
    include ssh, puppet
}

node 'puppet.example.com' {
    include base
    include puppet::master
}

node 'web.example.com' {
    include base
    include apache

    apache::vhost { ''
}

node 'db.example.com' {
    include base
    include mysql
}

node 'mail.example.com' {
    include base
    include postfix
}


