class alternatives {
  case $operatingsystem {
    Scientific,centos,fedora,redhat: { $bin = '/usr/sbin/alternatives' }
    debian,ubuntu: { $bin = '/usr/sbin/update-alternatives' }
  }
}
