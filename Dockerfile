FROM nixos/nix

# Just use the latest packages
#RUN nix-channel --add https://nixos.org/channels/nixos-20.09 nixos
#RUN nix-channel --add "https://github.com/NixOS/nixpkgs/archive/168436179d7d3aaa184a59800d607dd703fe78a8.tar.gz" nixos
RUN nix-channel --update

RUN nix-env -iA nixpkgs.texlive.combined.scheme-full 
RUN nix-env -iA nixpkgs.pandoc 

