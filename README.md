puppet-alternatives
===================

Puppet module to manage alternatives

```puppet
alternatives::provide {
  'java':
    alternative_name => '/usr/bin/java',
    path             => '/usr/java/jdk1.7.0_51/jre/bin/java',
    priority         => 20000;
}

alternatives::manage {
  'java': target => '/usr/java/jdk1.7.0_51/jre/bin/java';
}
```
