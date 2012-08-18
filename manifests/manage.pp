class alternatives::manage($target){
  exec{"manage_alternatives_${name}":
    command => "alternatives --set ${name} ${target}",
    unless  => "alternatives --display ${name} | grep 'points to' | grep -q '${target}'",
  }
}
