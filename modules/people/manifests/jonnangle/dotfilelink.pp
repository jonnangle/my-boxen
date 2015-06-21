define people::jonnangle::dotfilelink (
  $src = "${::boxen_srcdir}/dotfiles",
){
  file { "/Users/${::boxen_user}/${title}":
    ensure  => link,
    target  => "${src}/${title}",
    require => Repository[$src],
  }
}
