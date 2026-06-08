# Tempest Rust Steamapps Cleanup Container

This container is based on:

ghcr.io/parkervcp/games:rust

It wraps Parker's original `/entrypoint.sh` and deletes `/home/container/steamapps`
before the original entrypoint runs. This means the cleanup happens before
Pterodactyl's `steam_disk_space` feature/SteamCMD preflight.


