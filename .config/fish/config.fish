if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(oh-my-posh init fish --config $(brew --prefix oh-my-posh)/themes/takuya.omp.json)"
    # eval "$(oh-my-posh init fish --config $(brew --prefix oh-my-posh)/themes/gruvbox.omp.json)"
    # eval "$(oh-my-posh init fish --config $(brew --prefix oh-my-posh)/themes/atomic.omp.json)"
    fzf --fish | source
    set fish_greeting ""

    #alias utils
    alias g git
    alias cl clear
    alias tmux "tmux -u"
    command -qv nvim && alias vim nvim

    #zoxide
    zoxide init fish | source
    alias cd z

    #docker
    export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"
    export PATH="$PATH:/Users/tecabel/Applications/netcoredbg/"

    #flutter
    export PATH="$PATH:/opt/homebrew/flutter/bin"
    export PATH="$PATH:cz-conventional-changelog"
    export ANDROID_HOME="/Volumes/AbelMacMini/Users/tecabel/Library/Android/sdk"
    export PATH="$PATH":"$HOME/.pub-cache/bin"

    # dotnet-cli-tools
    export PATH="$PATH:$HOME/.dotnet/tools"

    #eza
    set fzf_preview_dir_cmd eza --all --color=always
    alias ll "eza --color=always --git --icons=always -a -l --no-user --no-permissions --no-time"

    # fzf
    # fisher install jethrokuan/fzf
    export FZF_DEFAULT_COMMNAD="fd --hidden --strip-cwd-prefix --exclude .git"
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMNAD"
    export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
    export FZF_COMPLETION_OPTS='--border --info=inline'

    set -gx PATH bin $PATH
    set -gx PATH ~/bin $PATH
    set -gx PATH ~/.local/bin $PATH

    direnv hook fish | source

    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    if test -f /Users/tecabel/anaconda3/bin/conda
        eval /Users/tecabel/anaconda3/bin/conda "shell.fish" hook $argv | source
    end
    # <<< conda initialize <<<

    cl
end
