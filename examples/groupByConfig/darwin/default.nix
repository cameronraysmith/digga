{ self, inputs, ... }:
let
  inherit (inputs.digga.lib) allProfilesTest;
in
{
  hostDefaults.channelName = "nixos";
  hosts = {
    Darwinia.modules = [ ./Darwinia.nix ];
    # Darwinia.tests = [ allProfilesTest ];
    Darwinia.tests = [ ];
  };
  importables = rec {
    suites = rec {
      base = [ ];
    };
  };
}
