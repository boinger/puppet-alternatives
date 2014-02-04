puppet-alternatives
===================

Puppet module to manage alternatives

```puppet
alternatives::set {
  'java':
    short_path  => '/usr/bin/java',
    target_path => '/usr/java/jdk1.7.0_51/jre/bin/java',
    priority    => 20000;
}
```
