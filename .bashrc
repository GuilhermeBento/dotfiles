[ -n "$PS1" ] && source ~/.bash_profile;

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/guilherme/google-cloud-sdk/path.bash.inc' ]; then . '/home/guilherme/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/guilherme/google-cloud-sdk/completion.bash.inc' ]; then . '/home/guilherme/google-cloud-sdk/completion.bash.inc'; fi
