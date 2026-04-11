if [[ -n $ANDROID_SDK_ROOT && $ANDROID_SDK_ROOT == "/opt/android-sdk" && -d "/opt/android-sdk" ]]; then
    cp -r -u /opt/android-sdk $HOME/.local/share/
    chown -R $USER:$USER $ANDROID_HOME
fi

export ANDROID_HOME="$HOME/.local/share/android-sdk"
export ANDROID_SDK_ROOT="$HOME/.local/share/android-sdk"
export ANDROID_AVD_HOME="$HOME/.config/.android/avd"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
