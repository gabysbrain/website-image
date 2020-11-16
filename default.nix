{ pkgs ? import <nixpkgs> {}
}:

pkgs.dockerTools.buildImage {
  name = "gabysbrain-website";
  config = {
    Cmd = [ "${pkgs.hello}/bin/hello" ];
  };
}
/*
pkgs.dockerTools.buildImage {
  name = "gabysbrain-website";
  contents = [ 
    # needed for circleci
    pkgs.bashInteractive
    pkgs.busybox
    pkgs.git
    pkgs.openssh
    pkgs.gnutar
    pkgs.gzip
    pkgs.cacert

    pkgs.pandoc 
    pkgs.texlive.combined.scheme-full 
  ];
  config = {
    Cmd = [ "/bin/sh" ];
    Env = [
      "PATH=/bin"
      "SSL_CERT_FILE=/etc/ssl/certs/ca-bundle.crt"
    ];
    WorkDir = "/";
  };
}
*/
