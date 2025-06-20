# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ lib, ... }:

{
  imports = [ ];
  boot = {
    initrd = {
      availableKernelModules = [
        "virtio_pci"
        "xhci_pci"
        "usbhid"
        "usb_storage"
      ];
      kernelModules = [ ];
    };
    kernelModules = [ ];
    extraModulePackages = [ ];
  };

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/13121b51-3b0b-4901-b324-b5a224f906a3";
      fsType = "ext4";
    };
    "/boot" = {
      device = "/dev/disk/by-uuid/0AE2-D2A4";
      fsType = "vfat";
      options = [
        "fmask=0077"
        "dmask=0077"
      ];
    };
  };

  swapDevices = [ ];
  networking.useDHCP = lib.mkDefault true;
  nixpkgs.hostPlatform = lib.mkDefault "aarch64-linux";
}
