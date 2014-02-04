define alternatives::set(
  $short_path,
  $target_path,
  $priority
){
  include ::alternatives
  alternatives::provide {
    $name:
      short_path  => $short_path,
      target_path => $target_path,
      priority    => $priority;
  }

  alternatives::manage {
    $name: target_path => $target_path;
  }
}
