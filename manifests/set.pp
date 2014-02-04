define alternatives::set(
  $short_path,
  $target_path,
  $priority
){
  include ::alternatives
  alternatives::provide {
    $name:
      alternative_name => $short_path,
      path             => $target_path,
      priority         => $priority;
  }

  alternatives::manage {
    $name: target => $target_path;
  }
}
