# nix/modules/home-manager.nix — auto-generated from bevy_kira_audio.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_kira_audio; in {
  options.programs.bevy_kira_audio = {
    enable = lib.mkEnableOption "bevy_kira_audio";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_kira_audio or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
