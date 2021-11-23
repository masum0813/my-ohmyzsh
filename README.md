
# My Oh my-zsh :)

```bash
vagrant up
```

```bash
vagrant reload --provision
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
