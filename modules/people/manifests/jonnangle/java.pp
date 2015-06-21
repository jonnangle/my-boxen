class people::jonnangle::java {
  java::version { '1.8.0_31': }

  package { 'jenv':
    ensure => latest,
  }
}
