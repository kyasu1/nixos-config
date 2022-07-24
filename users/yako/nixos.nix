{ pkgs, ... }:

{
  # https://github.com/nix-community/home-manager/pull/2408
  environment.pathsToLink = [ "/share/fish" ];

  users.users.yako = {
    isNormalUser = true;
    home = "/home/yako";
    extraGroups = [ "docker" "wheel" ];
    shell = pkgs.fish;
    hashedPassword = "$6$5dcMWtuaQyCZMLwX$wR.AABAKv12jKG0y9.SoGPTvexW1KUo.KV07znuIB3qJbxmd.k3jRX/hZunGYXvKvCZmeabugxqkUwT0QQLrd/";
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCw1t/epL/fGJbky9ny8tR6OpCovka3EtbIwBR9Zq+Z6pwrN3zLHampmtNBrICNbpzRzRqinNbywL+jtb7aD67eYl/CVhwuLXtj1F23vkwnyKbz/wVnsdbFshJE5wKBr9bcgaQUTqCeqexBatcxIGL69WybhFhL0VS0au6+u7thmjqt1ggtovyn2nOhnYcrCGsk1YI0ueZzBnkIWzml15yMZ+GzPdZ4V3V862Z6pP4EzY7cF21ri+r36MhN9wKnRxW7UA7Q4aqoImsbfSrGbo2VyhjJzI+z6TXDntiRSvRi8qTxcq3TKaTBbRGlJSXycqbqD1S3tjWfuAvHa+zLwJuoPxc3bEzg4d8gwRENqAz4Y+dqIrGHtUWxdo/0Wj0piDDydwLKpFMzdAP7oqqHZdZCmqQxzcUz4GFwZMRFdnbdJHNAIAnY8D823CIOoj5AqnDvGAjCzan+BdX3BkcmhEoHZtiv9/2v9w+uDGYqorv7X2xsJ1XfmbZ9ffq8+ztZDWTBk6Doa2U+JlhMVxLPOf4AFAK4Cm8dHhLymCS0r68XcRdMrQGz5ND9W1S7/0nKFhduFp6XxNvlQdVlj+tJqCWP7W3l9kmZwRUXXBXihxHf1ePTT7W4S4y5EZhHjIxDju6DfWqN/+PN1unR55IRjr6NtfB0ZxiQJs7diW3SbB25Hw== yako@pro.local"
    ];
  };

  nixpkgs.overlays = import ../../lib/overlays.nix ++ [
    (import ./vim.nix)
  ];
}
