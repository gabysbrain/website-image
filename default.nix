{ pkgs ? import <nixpkgs> {}
}:
pkgs.dockerTools.buildImage {
  name = "gabysbrain-website";
  contents = [ 
    # needed for circleci
    pkgs.bashInteractive
    pkgs.git
    pkgs.openssh
    pkgs.gnutar
    pkgs.gzip
    pkgs.cacert

    pkgs.pandoc 
    pkgs.texlive.combined.scheme-full 
  ];
}
