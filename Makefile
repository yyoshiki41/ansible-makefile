.PHONY: all help ls-hostname syntax-check lint galaxy-install vaullt-dec vault-enc

ANSIBLE=ansible
PLAYBOOK=ansible-playbook
GALAXY=ansible-galaxy
LINT=ansible-lint
VAULT=ansible-vault

all: help

help:
	@echo "Please use 'make <target>' where <target> is one of"
	@echo "    vault-dec                      to decrypt secret.yml"
	@echo "    vault-enc                      to encrypt secret.yml"

ls-hostname:
	$(ANSIBLE) all -i hosts -m shell -a "hostname;"

syntax-check:
	$(PLAYBOOK) playbook_dir/*.yml -i hosts --syntax-check

lint:
	$(LINT) playbook_dir/*.yml

galaxy-install:
	$(GALAXY) install -r ./roles/requirements.yml --roles-path ./roles

vault-dec:
	$(VAULT) decrypt hosts/group_vars/secret.yml --vault-password-file ./.secret/vault_password

vault-enc:
	$(VAULT) encrypt hosts/group_vars/secret.yml --vault-password-file ./.secret/vault_password
