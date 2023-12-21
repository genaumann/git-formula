{% from 'git/map.jinja' import git with context %}

git_install_pkgs:
  pkg.installed:
    - pkgs: {{ git['pkgs'] }}
