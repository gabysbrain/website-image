FROM nixos/nix

RUN nix-channel --add https://nixos.org/channels/nixos-20.09 nixos
RUN nix-channel --update

RUN nix-env -iA nixos.texlive.combined.scheme-full 
RUN nix-env -iA nixos.pandoc 

