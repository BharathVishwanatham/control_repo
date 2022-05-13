class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDSmdySCjaKRejH5BnNwmll/rXKS/CQYYuzwO3ZdibwCJs7pkzZwsLWU7Y6xnh6UX/oSU5unniOdwv654axdKdG3G9NAhkv95D/IkeTFpIf3lyJwyNY4QipwS6MHsTx0b8wjClmsEowxuzU6GE5+/BUm1zSGUkakBOHeEkf2qYIHX64qzvWCKxmOrUZGGD08kOfI7dca/BBqEKG7vBSvTxGtH9V+A/cmx4nI3rlvR/IkgfH+NhMPAXxJz3rC6Hg7QZ73yICQEb/U2KHOTBQYoHzrjOrcbditmmDpK+3l0tpbH6rTh9NTWVHbeYo4O56VADN5y++6BC+jL2MuQXNBrul',
  }  
}
