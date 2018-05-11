# ansible-makefile

This repository contains `Makefile` examples for Ansible Playbooks.

## Makefile

```bash
$ make help
Make command examples for Ansible
    ls-hostname                    to show all host ips
    print-vars                     to print out a dictionary of all of the facts
    syntax-check                   to run with --syntax-check option
    lint                           to lint playbook files
    galaxy-install                 to install roles using ansible-galaxy
    vault-dec                      to decrypt secret.yml
    vault-enc                      to encrypt secret.yml
    vault-edit                     to edit secret.yml
    vault-view                     to view secret.yml
```

## Directory

```bash
.
├── Makefile
├── hosts
│   └── group_vars
│       └── secret.yml
├── playbook_dir
│   └── site.yml
└── roles
    └── requirements.yml
```

The directory structure is an example.

So change directory paths according to your environment.
