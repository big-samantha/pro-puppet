class base {
    include ssh
}

node 'puppet.example.com' {
    include base
}

node 'web.example.com' {
    include base
}

node 'db.example.com' {
    include base
    include mysql
}

node 'mail.example.com' {
    include base
    include postfix
}


