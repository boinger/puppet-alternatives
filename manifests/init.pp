class alternatives {
  case $operatingsystem {
    Scientific,centos,fedora,redhat: { $bin = 'alternatives' }
    debian,ubuntu: { $bin = 'update-alternatives' }
  }
}
