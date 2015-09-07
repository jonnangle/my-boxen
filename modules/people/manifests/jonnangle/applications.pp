class people::jonnangle::applications {

  include brewcask
  Package <| title == 'brew-cask' |> {
    ensure => latest,
  }

  package { [
    'dropbox',
    'evernote',
    'google-chrome',
    'spectacle',
    'totalspaces',
    'wireshark',
  ]:
    ensure => present,
    provider => 'brewcask',
  }

  include iterm2::colors::arthur
  include iterm2::colors::saturn
  include iterm2::colors::solarized_dark
  include iterm2::colors::solarized_light
  include iterm2::colors::zenburn
  include iterm2::stable
  include virtualbox
  include xquartz
  include heroku
  include packer
  include phantomjs
  include jq
  include mysql

  include vagrant
  vagrant::plugin { 'vagrant-cachier': }
  vagrant::plugin { 'vagrant-serverspec': }

  go::version { '1.4.2': }

  phantomjs::version { '2.0.0' : }

  sudoers { $::boxen_user:
    ensure   => present,
    type     => 'user_spec',
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => '(ALL) NOPASSWD:SETENV: /usr/sbin/installer',
  }

}
