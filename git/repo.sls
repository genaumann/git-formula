{% from 'git/map.jinja' import git with context %}

include:
  - git.install

{%- set base_path = git['repo_base_path'] %}

{%- if git['repo'] | length %}
git_repo_base_create:
  file.directory:
    - name: {{ base_path }}
    - makedirs: True
{%- endif %}

{%- for repo, options in git['repo'].items() %}
  {%- set state = options.get('state', 'cloned') %}
  {%- set target = options.get('target', base_path ~ '/' ~ repo) %}
  {%- set user = options.get('user', 'root') %}

  {%- if state == 'absent' %}
git_repo_remove_{{ repo }}:
  file.absent:
    - name: {{ target }}

  {%- else %}
git_repo_{{ repo }}_{{ state }}:
  git.{{ state}}:
    - name: {{ options['name'] }}
    - target: {{ target }}
    - user: {{ user }}
    {%- if options.get('identity') %}
    - identity: {{ options['identity'] }}
    {%- elif options.get('https_user') or options.get('https_pass') %}
    - https_user: {{ options.get('https_user', '') }}
    - https_pass: {{ options.get('https_pass', '') }}
    {%- endif %}
    {%- if state == 'latest' %}
      {%- if options.get('rev') %}
    - rev: {{ options['rev'] }}
      {%- endif %}
      {%- if options.get('force_checkout') %}
    - force_checkout: {{ options['force_checkout'] }}
      {%- endif %}
      {%- if options.get('force_clone') %}
    - force_clone: {{ options['force_clone'] }}
      {%- endif %}
      {%- if options.get('force_fetch') %}
    - force_fetch: {{ options['force_fetch'] }}
      {%- endif %}
      {%- if options.get('force_reset') %}
    - force_reset: {{ options['force_reset'] }}
      {%- endif %}
      {%- if options.get('submodules') %}
    - submodules: {{ options['submodules'] }}
      {%- endif %}
    {%- endif %}
  {%- endif %}
{%- endfor %}
