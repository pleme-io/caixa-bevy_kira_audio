# nix/modules/nixos.nix — auto-generated from bevy_kira_audio.caixa.lisp
# description: "Bevy plugin for dynamic audio"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_kira_audio;
in {
  options.services.bevy_kira_audio = {
    enable = lib.mkEnableOption "bevy_kira_audio";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_kira_audio or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
