
# My Oh my-zsh :)

[![Build Vagrant CI](https://github.com/masum0813/my-ohmyzsh/actions/workflows/ansible-ci.yml/badge.svg)](https://github.com/masum0813/my-ohmyzsh/actions/workflows/ansible-ci.yml)

```bash
vagrant up
```

```bash
vagrant reload --provision-with all
```

```bash
vagrant up        # starts up: creates and configures guest machine
vagrant suspend   # suspends the guest machine
vagrant halt      # shuts down the running machine
vagrant reload    # vagrant halt; vagrant up
vagrant destroy   # stops machine and destroys all related resources
vagrant provision # perform provisioning for machine
vagrant box remove geerlingguy/ubuntu2004 # removes a box from vagrant
```

Vagrant [cheat sheet](https://gist.github.com/wpscholar/a49594e2e2b918f4d0c4)

## Provisioning

1. All

    ```bash
    vagrant reload --provision-with all
    ```

1. OH-My-ZSH

    ```bash
    vagrant reload --provision-with ohmyzsh
    ```

1. Other Tools

    ```bash
    vagrant reload --provision-with other
    ```

[tmux config](ansible/roles/other-tools/tmux.md)

## Packaging

```bash
vagrant package --vagrantfile Vagrantfile --output my-ohmyzsh.box
```

Hash calculate in Windows

```powershell
CertUtil -hashfile C:/Users/murat.oguz/Works/my-ohmyzsh/package.box MD5
```
