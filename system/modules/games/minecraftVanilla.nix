{
  pkgs,
  lib,
  ...
}: {
  services.minecraft = {
    enable = true;
    eula = true;
    declarative = true;

    package = pkgs.minecraftServers.vanilla-1-20;
    dataDir = "/var/lib/minecraft";

    serverProperties = {
      gamemode = "survival";
      difficulty = "medium";
      simulation-distance = 8;
      # level-seed = "4";
    };

    # NOTE: Id is fine to have
    whitelist = {
      TheNeekOfficial = "3289c038-7440-475f-aadf-c94184ac2dfd";
      Caffiee = "6923528d-45b4-4080-bc32-ffc465102150";
    };
  };
}
