---
git:
  repo:
    container:
      name: https://gitlab.com/genaumann/containerpub
      target: /home/vagrant/container
    cib:
      name: https://gitlab.com/genaumann/cib
      state: latest
      rev: v1.0.4
      user: vagrant
      target: /home/vagrant/cib
    php:
      name: https://github.com/php/php-src
      state: absent
