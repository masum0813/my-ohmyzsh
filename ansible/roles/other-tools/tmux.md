# Other Tools

## Real Other :)

## Tmux

### Tmux Plugin Manager

[GitHub-Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

```bash
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

### Tmux Resurrect

[GitHub-Tmux Resurrect](https://github.com/tmux-plugins/tmux-resurrect#tmux-resurrect)

```bash
set -g @plugin 'tmux-plugins/tmux-resurrect'
```

#### Key bindings

- `prefix + Ctrl-s` - save
- `prefix + Ctrl-r` - restore

#### Continuous saving

```bash
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'
```
