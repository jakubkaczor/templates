{
  description = "??";

  inputs.flakelight.url = "github:nix-community/flakelight";

  outputs = {flakelight, ...}: flakelight ./. {};
}
