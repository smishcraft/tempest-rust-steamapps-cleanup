# Tempest Rust Steamapps Cleanup Container

This container is based on:

ghcr.io/parkervcp/games:rust

It wraps Parker's original `/entrypoint.sh` and deletes `/home/container/steamapps`
before the original entrypoint runs. This means the cleanup happens before
Pterodactyl's `steam_disk_space` feature/SteamCMD preflight.

## Build

```bash
docker build -t ghcr.io/YOUR_ORG/tempest-rust-steamapps-cleanup:latest .
```

## Push

```bash
docker push ghcr.io/YOUR_ORG/tempest-rust-steamapps-cleanup:latest
```

## Egg

The included egg uses this placeholder image:

ghcr.io/YOUR_ORG/tempest-rust-steamapps-cleanup:latest

Replace `YOUR_ORG` with your real GHCR org/user, or change the egg image to your registry path.
