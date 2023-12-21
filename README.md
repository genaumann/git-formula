# Salt Git Formula

![GitHub release](https://img.shields.io/github/v/release/genaumann/salt-git-formula)
![lint][lint_badge]
![test][test_badge]

Install and configure git.
Clone and update local git repositories.

## General notes

See the full [SaltStack Formulas installation and usage instructions][install].

See [`example.yml`](example.yml) on how to configure the formula.

If you want to use this formula, please pay attention to the [`FORMULA`](FORMULA) file and/or `git tag`,
which contains the currently released version.
This formula is versioned according to [Semantic Versioning](http://semver.org/).

## Available states

- [`git`](git/init.sls)
- [`git.install`](git/install.sls)
- [`git.repo`](git/repo.sls)
- [`git.config`](git/config/init.sls)
- [`git.config.system`](git/config/system.sls)
- [`git.config.user`](git/config/user.sls)

### `git`

Includes the following states:

- `git.install`
- `git.repo`
- `git.config`

### `git.install`

Installs `git`.

### `git.repo`

Can clone, update and delete a local git repository.
You can use this state to verify a local git repo is checked out on your system.

### `git.config`

Includes the following states:

- `git.config.system`
- `git.config.user`

### `git.config.system`

Ensure a system wide git config is set/unset.

### `git.config.user`

Ensure a user wide git config is set/unset.

## Testing

Linux testing is done with `kitchen-salt`.

All tests and lint jobs are executed in GitHub Actions.

### Requirements

You can test the formula locally after installing the following requirements.

- vagrant
- VirtualBox
- Ruby
- bundler

### Run Test

```bash
bundle install
kitchen list # list all available test instances
kitchen test <instance>
```

## Known Errors

- salt state [`git.config_unset`][config_unset] throws an error - see [issue 65715][issue]

[install]: https://docs.saltproject.io/en/latest/topics/development/conventions/formulas.html
[config_unset]: https://docs.saltproject.io/en/latest/ref/states/all/salt.states.git.html#salt.states.git.config_unset
[issue]: https://github.com/saltstack/salt/issues/65715
[lint_badge]: https://github.com/genaumann/salt-git-formula/actions/workflows/lint.yml/badge.svg?branch=main
[test_badge]: https://github.com/genaumann/salt-git-formula/actions/workflows/salt-kitchen.yml/badge.svg?branch=main
