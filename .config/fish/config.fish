# Add HomeBrew's bin directory to path so you can use HomeBrew's binaries like `starship`
# Fish uses `fish_add_path` instead of `export PATH` modify $PATH.
fish_add_path "/opt/homebrew/bin/"

# Enable Starship prompt
starship init fish | source

# NVM configs
# Reference: https://medium.com/@joshuacrass/nvm-on-mac-for-fish-users-e00af124c540
function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

# Pointing Java Home directory to fix elasticsearch issue
# Don't forget to set `xpack.ml.enabled: false` at `/opt/homebrew/etc/elasticsearch/elasticsearch.yml`
export ES_JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
