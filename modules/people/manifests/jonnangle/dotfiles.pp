class people::jonnangle::dotfiles {
  repository { "${::boxen_srcdir}/dotfiles":
    ensure => present,
    source => "${::github_login}/dotfiles",
  }
  people::jonnangle::dotfilelink { '.bash_profile': }
  people::jonnangle::dotfilelink { '.tmux.conf': }

  file { [
    "/Users/${::boxen_user}/.bash",
    "/Users/${::boxen_user}/.vim",
    "/Users/${::boxen_user}/.vim/bundle",
  ]:
    ensure => directory,
    mode   => 0755,
  }

  vcsrepo { "/Users/${::boxen_user}/.bash/git-aware-prompt":
    ensure   => latest,
    provider => 'git',
    owner    => $::boxen_user,
    group    => 'staff',
    revision => 'master',
    source   => 'https://github.com/jimeh/git-aware-prompt.git',
    require  => File["/Users/${::boxen_user}/.bash"],
  }

  vcsrepo { "/Users/${::boxen_user}/.vim/bundle/Vundle.vim":
    ensure   => latest,
    provider => 'git',
    owner    => $::boxen_user,
    group    => 'staff',
    revision => 'master',
    source   => 'https://github.com/gmarik/Vundle.vim.git',
    require  => File["/Users/${::boxen_user}/.vim/bundle"],
  }

  people::jonnangle::dotfilelink { '.vimrc': }
}
