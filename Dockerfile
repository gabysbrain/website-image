FROM nixos/nix

RUN nix-channel --add https://nixos.org/channels/nixos-20.09 nixos
RUN nix-channel --update

RUN nix-build -A texlive.combined.scheme-full '<nixos>'
RUN nix-build -A pandoc '<nixos>'

