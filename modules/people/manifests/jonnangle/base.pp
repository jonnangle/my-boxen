class people::jonnangle::base {
  package { [
    'autojump',
    'awscli',
    'htop-osx',
    'nmap',
    'peco',
    'pstree',
    'terraform',
    'tmux',
    'tree',
    'vim',
    'watch',
    'wget',
  ]:
    ensure => latest,
  }

}
