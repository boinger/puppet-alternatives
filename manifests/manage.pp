define alternatives::manage($target){
  include ::alternatives
  exec{"manage_alternatives_${name}":
    command => "${alternatives::bin} --set ${name} ${target}",
    unless  => "${alternatives::bin} --display ${name} | grep 'points to' | grep -q '${target}'",
  }
}
