if command -v composer > /dev/null; then
    echo "composer called"
    export PATH=$PATH:$HOME/.config/composer/vendor/bin
fi

