{
  description = "Templates for a Nix flake";

  outputs = {self}: {
    templates.general = rec {
      description = "A general template for a Nix flake";
      welcomeText = description;
      path = ./general;
    };
    templates.default = self.templates.general;
  };
}
