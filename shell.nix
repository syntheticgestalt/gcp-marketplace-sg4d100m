{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
	buildInput = with pkgs; [
		pixi
	];
	shellHook = ''
	watch_file pixi.lock
	eval "$(pixi shell-hook)"
	'';
}
