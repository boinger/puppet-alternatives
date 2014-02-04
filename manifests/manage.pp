define alternatives::manage($target_path){
  include ::alternatives
  exec{"manage_alternatives_${name}":
    command => "${alternatives::bin} --set ${name} ${target_path}",
    unless  => "${alternatives::bin} --display ${name} | grep 'points to' | grep -q '${target_path}'",
  }
}
