define alternatives::provide(
  $link,
  $path,
  $priority
){
  exec { "alternatives --install ${link} ${name} ${path} ${priority}":
    unless => "alternatives --display ${name} | grep -q '${path} - priority ${priority}'"
  }
}
