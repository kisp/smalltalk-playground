FROM nixos/nix

RUN nix-channel --update

RUN nix-env -iA nixpkgs.iputils

WORKDIR /coding

COPY default.nix .

RUN nix-shell --pure
