{ self, inputs, ... }:
let
  inherit (inputs.digga.lib) allProfilesTest;
in
{
  hostDefaults.channelName = "nixos";
  hosts = {
    Darwinia.modules = [ ./Darwinia.nix ];
    Darwinia.tests = [ allProfilesTest ];
  };
  importables = rec {
    suites = rec {
      base = [ ];
    };
  };
}
