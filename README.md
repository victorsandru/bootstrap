## Seeding the bootstrap node

The bootstrap node needs to be seeded with day 0 services. Such as DNS, Forgejo, and ArgoCD bootstrap.

### Pushing a change to the bootstrap host
Deploying to the host is as easy as push to deploy. Push your changes to main, and with an SSH-able machine, run:

```bash
git remote add node ssh://bootstrap@192.168.100.200/~/bootstrap
git push node main
```

The bootstrap host is configured for it's Git to accept the push over ssh and update the files on disk. `git config receive.denyCurrentBranch updateInstead`

### Runbooks

#### Secrets Management with SOPS

WSL:
    `SOPS_AGE_KEY="$(op.exe read 'op://<vault>/<key>/<field>')" sops edit secrets.enc.yaml`
Mac:
    `SOPS_AGE_KEY="$(op read 'op://<vault>/<key>/<field>')" sops edit secrets.enc.yaml`