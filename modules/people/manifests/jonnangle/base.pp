class people::jonnangle::base {
  package { [
    'autojump',
    'awscli',
    'git-extras',
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

  package { 'curl':
    ensure => latest,
    install_options => [
      '--with-openssl',
      '--with-nghttp2',
    ],
  }

}
