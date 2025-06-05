{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = with pkgs; [
      texliveBasic
      pixi
      just
    ];
    shellHook = ''
      watch_file pixi.lock
      eval "$(pixi shell-hook)"
    '';
  }