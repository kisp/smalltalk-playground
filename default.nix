{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.gnu-smalltalk
    pkgs.emacs-nox
    pkgs.emacsPackages.smalltalk-mode
    pkgs.emacsPackages.ivy
    pkgs.emacsPackages.swiper
    pkgs.emacsPackages.smartparens
    pkgs.emacsPackages.paredit
    pkgs.emacsPackages.whitespace-cleanup-mode
  ];
}
