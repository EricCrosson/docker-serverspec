# Overview

[![Build Status](https://travis-ci.org/EricCrosson/docker-serverspec.svg?branch=master)](https://travis-ci.org/EricCrosson/docker-serverspec)
[![Docker Stats](https://img.shields.io/docker/pulls/hamroctopus/serverspec.svg)](https://hub.docker.com/r/hamroctopus/serverspec/)

This project provides a [docker container] of [serverspec] that is
suitable for use in a [continuous integration] system like [GitLab
CI].

## Use

```yml
test:
  image: hamroctopus/serverspec
  script:
    - rake spec
```

[continuous integration]: https://en.m.wikipedia.org/wiki/Continuous_integration
[GitLab CI]: https://about.gitlab.com/2016/07/29/the-basics-of-gitlab-ci/
[serverspec]: http://serverspec.org/
[docker container]: https://hub.docker.com/r/hamroctopus/serverspec/tags/
