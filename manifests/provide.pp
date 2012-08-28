define alternatives::provide(
  $alternative_name,
  $path,
  $priority
){
  include ::alternatives
  exec { "provide_alternative_${alternative_name}_${name}":
    command => "${alternatives::bin} --install ${name} ${alternative_name} ${path} ${priority}",
    unless => "${alternatives::bin} --display ${alternative_name} | grep -q '${path} - priority ${priority}'"
  }
}
