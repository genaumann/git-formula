{% from 'git/map.jinja' import git with context %}

git_system_config:
  file.managed:
    - name: {{ git['system_config_file'] }}
    - source: salt://git/files/gitconfig.jinja
    - template: jinja
    - defaults:
        configs: {{ git['system_config'] }}
