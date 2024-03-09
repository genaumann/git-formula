# Changelog

## [1.0.3](https://github.com/genaumann/salt-git-formula/compare/v1.0.2...v1.0.3) (2024-03-09)


### 💿 Continuous Integration 💿

* **github:** run release on successfull test [skip ci] ([a4ebd7d](https://github.com/genaumann/salt-git-formula/commit/a4ebd7d3c69dc4f266a30cbc470d4c19c7cc7c09))
* **github:** use gh app for release ([0eddc25](https://github.com/genaumann/salt-git-formula/commit/0eddc2534e9734b993bbdfb8b85f31f96deb659f))
* **release:** ci should not trigger a release [skip ci] ([3ca2a31](https://github.com/genaumann/salt-git-formula/commit/3ca2a31bee5dd62088d123a047bfd27fc73c0073))


### 🧪 Test 🧪

* add salt 3006.6 3006.7 3007.0 ([8a4afb4](https://github.com/genaumann/salt-git-formula/commit/8a4afb40c56a5f13cc1e7a3d4194d4c399fed41e))


### 📖 Documentation 📖

* add new supported salt versions ([e1beae3](https://github.com/genaumann/salt-git-formula/commit/e1beae3db64bbad55500dfa7233b228886104f0f))

## [1.0.2](https://github.com/genaumann/salt-git-formula/compare/v1.0.1...v1.0.2) (2024-01-21)


### 💿 Continuous Integration 💿

* **github:** set ruby version to 3.2.2 ([8dbb1b6](https://github.com/genaumann/salt-git-formula/commit/8dbb1b6a2487e74f191766c1bf320b2ced2f4e7c))

## [1.0.1](https://github.com/genaumann/salt-git-formula/compare/v1.0.0...v1.0.1) (2023-12-22)


### 🐛 Bugfix 🐛

* **config:** remove jinja whitespace ([9a58b6d](https://github.com/genaumann/salt-git-formula/commit/9a58b6de394b1c568bb2886f34c064c8df290f05))


### 🧪 Test 🧪

* add rocky opensuse and fedora ([c5cf150](https://github.com/genaumann/salt-git-formula/commit/c5cf15087a367f1a4e08b9308ae841c9c23cee80))
* **inspec:** add git test command ([c3e6545](https://github.com/genaumann/salt-git-formula/commit/c3e65452efd455fb62dff14ce93205bac99ee0e8))
* specify path to gitconfig ([165ac9d](https://github.com/genaumann/salt-git-formula/commit/165ac9d20d60ee799cfefd831fb0101987f097e0))


### 📖 Documentation 📖

* add os support matrix ([5af76e9](https://github.com/genaumann/salt-git-formula/commit/5af76e97b3b8e4045c28371f4a0f7159a60ec0a4))

## 1.0.0 (2023-12-21)


### ✨ Feature ✨

* **config:** add state ([c9e3172](https://github.com/genaumann/salt-git-formula/commit/c9e3172e62cc547ae97280b65d75f6982bf309a4))
* include all git states ([3aa0038](https://github.com/genaumann/salt-git-formula/commit/3aa00384719a6e6c00f117e193fa1f4a3a9b39c8))
* **install:** add state ([9931716](https://github.com/genaumann/salt-git-formula/commit/9931716cd26ee64b262c379117b05fb76600f798))
* **repo:** add state ([40122af](https://github.com/genaumann/salt-git-formula/commit/40122afa2cc14adf6e7496b4370e8c43e614cdb1))


### 💿 Continuous Integration 💿

* **github:** add commitlint workflow ([6f9d14c](https://github.com/genaumann/salt-git-formula/commit/6f9d14c46e6ee67d267837ec153fa87fcf44fe5c))
* **github:** add release workflow ([8aabb2f](https://github.com/genaumann/salt-git-formula/commit/8aabb2fe770c7a95a45b1959e8993eb921c1e68e))
* **github:** add rubocop workflow ([87debf8](https://github.com/genaumann/salt-git-formula/commit/87debf87b115ca39527b9c355e85af42fe93c885))
* **github:** add salt-kitchen workflow ([fa16e4c](https://github.com/genaumann/salt-git-formula/commit/fa16e4c1ab65fd7d968057ceab11e0b644c99595))
* **github:** add salt-lint workflow ([54c3bec](https://github.com/genaumann/salt-git-formula/commit/54c3bec10517d65067f123d62cb86ebd5a2f0a68))
* **github:** dont persist credentials ([7508c09](https://github.com/genaumann/salt-git-formula/commit/7508c09157151c4c23e0dc292b0356f0de1b03dd))
* **github:** reconfigure salt-lint worfklow ([e9b4ecb](https://github.com/genaumann/salt-git-formula/commit/e9b4ecb263d2d85499cece689f4d498f39d83863))
* **github:** run release after test ([deb3713](https://github.com/genaumann/salt-git-formula/commit/deb3713e1c255f480dd54b435a0234adfaea5948))
* **release:** add configuration ([976ed2c](https://github.com/genaumann/salt-git-formula/commit/976ed2c1d3bcd641cfb5d7f23dce8fcd002fe1c0))
* **release:** add npm dependency ([65061c4](https://github.com/genaumann/salt-git-formula/commit/65061c4a6c509ae01f05a80b90a2246eee2bb772))
* **rubocop:** add config ([82ef41e](https://github.com/genaumann/salt-git-formula/commit/82ef41e68f5c13a1b12f52fa3f80fec25a858393))


### 🖌️ Style 🖌️

* apply rubocop linting ([f0333bd](https://github.com/genaumann/salt-git-formula/commit/f0333bdb76f6b910e5234cdf9396d70bafaa95c5))
* apply salt-lint ([409cf8b](https://github.com/genaumann/salt-git-formula/commit/409cf8b270fcfa0dd04dfe0b47069dd8bd69b0d5))


### 🧪 Test 🧪

* **inspec:** add tests ([1aadcf4](https://github.com/genaumann/salt-git-formula/commit/1aadcf445b5f3cbded480f047c7b8ebe3cc66284))
* **kitchen:** add config ([851665f](https://github.com/genaumann/salt-git-formula/commit/851665fb58953d87026fdd8642178acab3fac028))
* **kitchen:** use custom vagrant box ([3ef8621](https://github.com/genaumann/salt-git-formula/commit/3ef8621f377942c18033aceaa2a1441465f468ef))


### 📖 Documentation 📖

* add badges ([c83acfb](https://github.com/genaumann/salt-git-formula/commit/c83acfb2d215687e5c0be9eb18d5dce0ee26eae3))
* add README ([7e11017](https://github.com/genaumann/salt-git-formula/commit/7e11017cdb4930fc5dce3c9c95c064ae6610e87e))
* **example:** add yaml ([6eec3a4](https://github.com/genaumann/salt-git-formula/commit/6eec3a451d3c434d2a9a357b05bcc11a4c568b09))
