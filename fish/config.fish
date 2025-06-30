# Konfigurasi interaktif + oh-my-posh
if status is-interactive
    # Commands to run in interactive sessions can go here
end
#oh-my-posh init --config /home/alwizen/.cache/oh-my-posh/themes/1_shell.omp.json | source
oh-my-posh init fish --config ~/.cache/oh-my-posh/themes/di4am0nd.omp.json | source
#oh-my-posh init fish --config ~/jandedobbeleer.omp.json | source

# ====== Alias Migrasi dari ZSH ke Fish ======

# ls dan exa
function l; ls -lh $argv; end
function ll; exa -l --icons $argv; end
function la; ls -A $argv; end
function lm; ls -m $argv; end
function lr; ls -R $argv; end
function lg; ls -l --group-directories-first $argv; end

# Git
function gcl; git clone --depth 1 $argv; end
function gi; git init $argv; end
function ga; git add $argv; end
function gc; git commit -m $argv; end
function gp; git push origin master $argv; end

# Exit
function q; exit; end
function ':q'; exit; end

# Tools
function cat; bat $argv; end
function info; pfetch $argv; end
function n; nvim $argv; end
function v; nvim $argv; end

# Laravel & Artisan
function laravel; composer create-project laravel/laravel $argv; end
function a; php artisan $argv; end
function as; php artisan serve $argv; end
function am; php artisan make:model $argv; end
function ag; php artisan make:migration $argv; end
function ac; php artisan make:controller $argv; end
function admin-install; composer require filament/filament:"^3.2" -W $argv; end
function panel-install; php artisan filament:install --panels $argv; end
function a-filres; php artisan make:filament-resource $argv; end
function kaido-filament; composer create-project siubie/kaido-kit $argv; end
function shield1; php artisan shield:generate --all $argv; end
function shield2; php artisan shield:super-admin $argv; end

#ssh
function sppg-tigaPutri; ssh tigaPutri@103.217.144.222 $argv; end
function sppg-sheIsh; ssh alwizen@103.31.39.12 $argv; end


function t-config; cd ~/.config/kitty; end
function v-config; cd ~/.config/nvim; end
function larament; composer create-project --prefer-dist CodeWithDennis/larament $argv; end

# ============================================
