## 🔐 English Version

Script to easily authenticate with GitHub from your terminal using a **Personal Access Token (PAT)**.

It helps you:

* Choose a language (English or Spanish)
* Set your Git username and email
* Sign in using `gh auth login --with-token`
* Store the token securely (not saved as plain text)

---

### ✅ Requirements

* [Git](https://git-scm.com) installed
* [GitHub CLI (`gh`)](https://cli.github.com) installed

---

### 🚀 How to use

1. Make the script executable:

```bash
chmod +x github-auth.sh
```

2. Run the script:

```bash
./github-auth.sh
```

3. Follow the prompts:

* Select the language
* Enter your GitHub username and email
* Paste your GitHub token (PAT) when asked

---

### 🧪 Check if it worked

After running the script, check the authentication status with:

```bash
gh auth status
```

---

### 🔐 Security

Your token **is not saved to a file**. It is stored securely by the GitHub CLI:

* macOS → Keychain
* Linux → Encrypted config file (`~/.config/gh/hosts.yml`)
* Windows → Windows Credential Store

---

### 📷 Example

```bash
🌐 Choose your language / Elige tu idioma:
1) 🇬🇧 English
2) 🇪🇸 Español
➡️ Select language / Selecciona idioma (1 or 2): 1
🧑‍💻 GitHub username (for git config): paco
📧 GitHub email (for git config): paco@gmail.com
🔑 Enter your GitHub token (PAT):
✅ Authentication complete and token saved
```
