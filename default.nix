{ pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.desktopManager.deepin.enable = true;
  services.deepin.deepin-anything.enable = true;
  services.deepin.dde-daemon.enable = true;
  services.deepin.dde-api.enable = true;
  services.deepin.app-services.enable = true;
  services.xserver.libinput.enable = true;
  hardware.pulseaudio.enable = true;

  services.xserver.displayManager.lightdm.enable = true;
  services.xserver = {
    xkb.layout = "us";
    xkb.variant = "";
  };

  environment.systemPackages = with pkgs; [
    deepin.util-dfm
    deepin.udisks2-qt5
    deepin.treeland-protocols
    deepin.startdde
    deepin.qt6platform-plugins
    deepin.qt6mpris
    deepin.qt6integration
    deepin.qt5platform-plugins
    deepin.qt5integration
    deepin.gio-qt
    deepin.dwayland
    deepin.dtkwidget
    deepin.dtklog
    deepin.dtkdeclarative
    deepin.dtkcore
    deepin.dtkcommon
    deepin.dtk6widget
    deepin.dtk6systemsettings
    deepin.dtk6log
    deepin.dtk6gui
    deepin.dtk6declarative
    deepin.dtk6core
    deepin.dpa-ext-gnomekeyring
    deepin.docparser
    deepin.disomaster
    deepin.deepin-wayland-protocols
    deepin.deepin-wallpapers
    deepin.deepin-terminal
    deepin.deepin-system-monitor
    deepin.deepin-sound-theme
    deepin.deepin-shortcut-viewer
    deepin.deepin-service-manager
    deepin.deepin-screensaver
    deepin.deepin-reader
    deepin.deepin-gtk-theme
  ];
}
