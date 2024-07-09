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
      alias ll "eza -l -g --icons"
      alias lla "ll -a"
      alias ff "fastfetch --iterm ~/.config/fastfetch/pngs/*.png --logo-width 30 --logo-height 18"
    end

end
