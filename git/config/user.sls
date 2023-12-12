{% from 'git/map.jinja' import git with context %}

{%- for usr_cfg in git['user_config'] %}
  {%- set user = usr_cfg.get('user', 'root') %}
  {%- set state = usr_cfg.get('state', 'present') %}

  {%- if state == 'present' %}

git_user_config_{{ usr_cfg['key'] }}={{ usr_cfg['value'] }}@{{ user }}-{{ state }}:
  git.config_set:
    - name: {{ usr_cfg['key'] }}
    - user: {{ user }}
    {%- if usr_cfg.get('value') | is_list %}
    - multivar: {{ usr_cfg['value'] }}
    {%- else %}
    - value: {{ usr_cfg['value'] }}
    {%- endif %}
    {%- if usr_cfg.get('repo') %}
    - repo: {{ usr_cfg['repo'] }}
    {%- else %}
    - global: True
    {%- endif %}

  {%- elif state == 'absent' %}

git_user_config_{{ usr_cfg['key'] }}@{{ user }}-{{ state }}:
  git.config_unset:
    - name: {{ usr_cfg['key'] }}
    - user: {{ user }}
    {%- if usr_cfg.get('value') %}
    - value_regex: {{ usr_cfg['value'] }}
    {%- else %}
    - all: True
    {%- endif %}
    {%- if usr_cfg.get('repo') %}
    - repo: {{ usr_cfg['repo'] }}
    {%- else %}
    - global: True
    {%- endif %}
    - onfail:
      - test: git_user_config{{ usr_cfg['key'] }}@{{ user }}-{{ state }}-info

git_user_config{{ usr_cfg['key'] }}@{{ user }}-{{ state }}-info:
  test.show_notification:
    - name: {{ usr_cfg['key'] }}@{{ user }}-fail
    - text: git.config_unset state module is buggy, see https://github.com/saltstack/salt/issues/65715
  {%- endif %}
{%- endfor %}
