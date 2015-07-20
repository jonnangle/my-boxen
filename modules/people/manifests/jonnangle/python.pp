class people::jonnangle::python {
  $pyversion = '2.7.8'
  python::version { $pyversion: }
  class { 'python::global':
    version => $pyversion
  }
  python::package { "virtualenv for ${pyversion}":
    package => 'virtualenv',
    python  => $pyversion,
  }
}
