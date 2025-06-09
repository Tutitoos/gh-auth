#!/bin/bash

set -euo pipefail

# === PREGUNTAR IDIOMA ===
echo "🌐 Choose your language / Elige tu idioma:"
echo "1) 🇬🇧 English"
echo "2) 🇪🇸 Español"
read -rp "➡️: " lang_input

case "$lang_input" in
  1) LANG_CHOICE="en" ;;
  2) LANG_CHOICE="es" ;;
  *) echo "❗ Invalid option. Defaulting to 🇪🇸 Español."; LANG_CHOICE="es" ;;
esac

# === FUNCIONES DE TRADUCCIÓN ===
function msg() {
  case "$1" in
    auth_title)
      [[ "$LANG_CHOICE" == "en" ]] && echo "🔐 GitHub CLI Authentication (gh auth login --with-token)" || echo "🔐 Autenticación con GitHub CLI (gh auth login --with-token)"
      ;;
    divider)
      echo "------------------------------------------------------------"
      ;;
    ask_user)
      [[ "$LANG_CHOICE" == "en" ]] && echo -n "🧑‍💻 GitHub username (for git config): " || echo -n "🧑‍💻 Nombre de usuario de GitHub (para git config): "
      ;;
    ask_email)
      [[ "$LANG_CHOICE" == "en" ]] && echo -n "📧 GitHub email (for git config): " || echo -n "📧 Email de GitHub (para git config): "
      ;;
    git_config_done)
      [[ "$LANG_CHOICE" == "en" ]] && echo "✅ Git global configuration updated" || echo "✅ Configuración global de Git actualizada"
      ;;
    gh_missing)
      [[ "$LANG_CHOICE" == "en" ]] && echo "❌ GitHub CLI (gh) is not installed. Download it from https://cli.github.com" || echo "❌ GitHub CLI (gh) no está instalado. Descárgalo desde https://cli.github.com"
      ;;
    ask_token)
      [[ "$LANG_CHOICE" == "en" ]] && echo -n "🔑 Enter your GitHub token: " || echo -n "🔑 Introduce tu token de GitHub: "
      ;;
    login_done)
      [[ "$LANG_CHOICE" == "en" ]] && echo "🎉 Authentication complete and token saved in GitHub CLI credential store." || echo "🎉 Autenticación completada y token guardado en el credential store de GitHub CLI."
      ;;
  esac
}

# === INICIO ===
msg auth_title
msg divider

# === INPUTS ===
msg ask_user
read -r GITHUB_USER
msg ask_email
read -r GITHUB_EMAIL

git config --global user.name "$GITHUB_USER"
git config --global user.email "$GITHUB_EMAIL"
msg git_config_done

# Verificar CLI instalada
if ! command -v gh &>/dev/null; then
  msg gh_missing
  exit 1
fi

msg ask_token
read -rsp "" GITHUB_TOKEN
echo

# Login
echo "$GITHUB_TOKEN" | gh auth login --with-token

# Verificar login
echo
gh auth status
echo
msg login_done
