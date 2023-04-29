# Ansible `ussher` role

This role installs [`ussher`](https://github.com/dolph/ussher), but does not [configure](https://github.com/dolph/ussher#configuration) it.

## Role Variables

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

- `ussher_binary_url`: The path that `ussher` should be installed from. You can customize this to pin to a specific release.
- `ussher_binary_path`: The path where the `ussher` binary should be installed.
- `ussher_user`: The user that sshd should run `ussher` as. `ussher` will refuse to run as `root`.

## Example Playbook

Including this role in your playbook is as simple as:

```yaml
- hosts: all
  roles:
  - role: ussher
    tags: ussher
```

## License

Apache 2.0
