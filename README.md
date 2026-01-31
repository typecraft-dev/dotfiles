# Dotfiles

Personal configuration files and environment setups.

## Repository Structure

- `alacritty/`: Terminal emulator configuration.
- `backgrounds/`: Desktop wallpapers.
- `ghostty/`: Ghostty terminal configuration.
- `hyprland/`, `hyprlock/`, `hyprmocha/`, `hyprpaper/`: Hyprland Wayland compositor configuration and related tools.
- `i3/`: i3 window manager configuration.
- `kitty/`: Kitty terminal configuration.
- `microk8s/`: MicroK8s cluster configuration and details.
    - **Note:** This folder only applies to the **nix server**.
- `nvim/`: Neovim configuration (Lua based).
- `picom/`: X11 compositor configuration.
- `polybar/`: Status bar configuration for i3/X11.
- `rofi/`: Application launcher configuration.
- `starship/`: Cross-shell prompt configuration.
- `tmux/`: Terminal multiplexer configuration.
- `waybar/`: Status bar for Wayland.
- `wofi/`: Wayland application launcher.
- `zshrc/`: Zsh shell configuration.

## MicroK8s (Nix Server Only)

The `microk8s/` directory contains configuration and status information for the MicroK8s cluster running on my nix server. It is not intended for use on other machines.
