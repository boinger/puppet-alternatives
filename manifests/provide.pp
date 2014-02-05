define alternatives::provide(
  $short_path,
  $target_path,
  $priority
){
  include ::alternatives
  exec { "provide_alternative_${short_path}_${name}":
    command => "${alternatives::bin} --install ${short_path} ${name} ${target_path} ${priority}",
    unless => "${alternatives::bin} --display ${name} | grep -q '${target_path} - priority ${priority}'"
  }
}
