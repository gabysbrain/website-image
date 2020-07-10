{ pkgs ? import <nixpkgs> {}
}:
pkgs.dockerTools.buildLayeredImage {
  name = "gabysbrain-website";
  contents = [ 
    pkgs.pandoc 
    pkgs.texlive.combined.scheme-full 
  ];
}
