Toolbox is an ubuntu-based docker image pre-configured with many of the tools I need on a daily basis

The container will start an sshd instance with password auth disabled, and public key auth enabled when the `AUTHORIZED_KEYS` environment variable is set.

| Environment Variable | Value |
| -------------------- | ----- |
| AUTHORIZED_KEYS | ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAjnk7... |