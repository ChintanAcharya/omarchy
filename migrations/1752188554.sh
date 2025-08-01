echo "Update google-chrome.desktop to ensure we are always using wayland"
if [[ ! -f ~/.local/share/applications/google-chrome.desktop ]]; then
  cp ~/.local/share/omarchy/applications/google-chrome.desktop ~/.local/share/applications/
  xdg-settings set default-web-browser google-chrome.desktop
  xdg-mime default google-chrome.desktop x-scheme-handler/http
  xdg-mime default google-chrome.desktop x-scheme-handler/https
fi
