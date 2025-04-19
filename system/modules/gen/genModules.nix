{...}: {
  imports = [
    ./ssh.nix
    ./auLocale.nix
    ./firewall.nix
    ./networking.nix
    ./systemdBoot.nix
    ./basePackages.nix
  ];
}
