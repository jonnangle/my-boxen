class people::jonnangle::preferences {

  include osx::global::enable_standard_function_keys
  include osx::keyboard::capslock_to_control

  class { 'osx::dock::hot_corners':
    bottom_right => 'Start Screen Saver',
    bottom_left  => 'Start Screen Saver',
  }
}
