{ config, pkgs, ... }: {
  nix.trustedUsers = [ "@admin" "sosumi" ];
  services.nix-daemon.enable = true;
  users.nix.configureBuildUsers = true;

  environment.systemPackages = with pkgs; [
    coreutils
    curl
    direnv
    git
    gnupg
    gnused
    gnutar
    mas
    wget
  ];

  # https://daiderd.com/nix-darwin/manual/index.html#opt-system.stateVersion
  system.stateVersion = 4;
}
