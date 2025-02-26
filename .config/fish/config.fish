if status is-interactive
    # Commands to run in interactive sessions can go here
    
    set fish_greeting ""
    
    set -gx TERM xterm-256color

    # Theme
    set -g theme_color_scheme terminal-dark

    # Aliases
    alias vim="nvim"
    alias cls="clear"

    # Aliases for Eza
    if type -q eza
      alias ll "eza -l --icons"
      alias lla "eza -A -l --icons"
      alias ff "fastfetch -l  ~/.config/fastfetch/pngs/*.png --logo-width 34 --logo-height 20"
    end

end

