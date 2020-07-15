{ pkgs ? import <nixpkgs> {}
}:
pkgs.dockerTools.buildImage {
  name = "gabysbrain-website";
  contents = [ 
    pkgs.pandoc 
    pkgs.texlive.combined.scheme-full 
  ];
}
