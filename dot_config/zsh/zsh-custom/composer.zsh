if command -v composer > /dev/null; then
    echo "composer called"
    export PATH=$HOME/.config/composer/vendor/bin:$PATH
fi

