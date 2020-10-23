# Ansible inside Docker

A very simple Docker image to run Ansible commands and playbooks.

## Usage

### Docker run

Mount the current directory to the `/ansible` directory and use the shell to execute Ansible commands:

```shell
docker run --rm -it -v $(pwd):/ansible:ro egvimo/ansible /bin/sh
```

If you use SSH keys for the connection to your hosts:

```shell
docker run --rm -it -v ~/.ssh:/root/.ssh:ro -v $(pwd):/ansible:ro egvimo/ansible /bin/sh
```

Run the Ansible command directly:

```shell
docker run --rm -it -v ~/.ssh:/root/.ssh:ro -v $(pwd):/ansible:ro egvimo/ansible ansible-playbook main.yml
```

### Alias

Use aliases:

```shell
alias ansible-playbook='docker run --rm -it -v ~/.ssh:/root/.ssh:ro -v $(pwd):/ansible:ro egvimo/ansible ansible-playbook'
```

And then:

```shell
ansible-playbook main.yml
```
