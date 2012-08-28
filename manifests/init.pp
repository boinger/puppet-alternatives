class alternatives {
  case $operatingsystem {
    centos,fedora,redhat: { $bin = 'alternatives' }
    debian,ubuntu: { $bin = 'update-alternatives' }
  }
}
