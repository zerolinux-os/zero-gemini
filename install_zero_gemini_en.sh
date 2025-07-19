#!/bin/bash

# ZeroLinux - Gemini CLI Installer by ZeroX 😈🔥
# github.com/ZeroLinux-7x

APP_NAME="zero-gemini"
APP_DIR="/usr/local/bin"
ICON_PATH="/usr/share/pixmaps/zero-gemini.png"
DESKTOP_FILE="/usr/share/applications/zero-gemini.desktop"

echo "🔧 Installing Gemini CLI for ZeroLinux..."

# 1. Installing requirements
echo "📦 Installing Node.js and npm..."
sudo pacman -Syu --noconfirm nodejs npm

# 2. Installing gemini-cli
echo "⚙️ Installing Gemini CLI..."
sudo npm install -g @google/gemini-cli

# 3. Creating terminal alias
echo "🔗 Creating command shortcut..."
sudo ln -sf "$(which gemini)" "$APP_DIR/$APP_NAME"

# 4. Requesting API Key from user
read -p "🔑 Enter your Gemini API Key (or leave blank to skip): " USER_API_KEY

if [ -n "$USER_API_KEY" ]; then
  echo "🔐 Saving API key to ~/.bashrc and ~/.zshrc..."
  echo "export GEMINI_API_KEY=\"$USER_API_KEY\"" >> ~/.bashrc
  echo "export GEMINI_API_KEY=\"$USER_API_KEY\"" >> ~/.zshrc
fi

# 5. Creating application icon
echo "🖼️ Creating application icon..."

# Temporary simple icon (you can change it)
cat <<EOF | sudo tee $ICON_PATH >/dev/null
<svg xmlns="http://www.w3.org/2000/svg" width="64" height="64">
  <rect width="100%" height="100%" fill="#1E1E2E"/>
  <text x="50%" y="50%" font-size="24" fill="#00FFFF" text-anchor="middle" dominant-baseline="middle">🤖</text>
</svg>
EOF

# 6. Creating .desktop file to show in menu
echo "🗂️ Creating desktop launcher..."

sudo tee "$DESKTOP_FILE" >/dev/null <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=ZeroGemini AI
Comment=AI Assistant Powered by Gemini Pro
Exec=$APP_DIR/$APP_NAME
Icon=$ICON_PATH
Terminal=true
Categories=Utility;Development;AI;
StartupNotify=true
EOF

# 7. Updating application database
echo "🔄 Updating application database..."
sudo update-desktop-database

# 8. Installation completed
echo "✅ Gemini CLI installed successfully as '$APP_NAME'."
echo "🚀 Run it via terminal: $APP_NAME"
echo "🧠 Or from the apps menu: ZeroGemini AI"

