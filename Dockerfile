FROM nixos/nix

RUN nix-channel --add https://nixos.org/channels/release-20.09 nixos
RUN nix-channel --update

RUN nix-build -A pythonFull '<nixos>'

