## 🔐 Versión en Español

Script para autenticarse fácilmente en GitHub desde la terminal usando un **Personal Access Token**.

## ⚠️ Permisos recomendados (¡Importante!)

👉 Revisa los permisos que debes activar para que todo funcione correctamente con Git, Docker y GitHub Packages:

➡️ [Ir a la tabla de permisos recomendados](./PERMISSIONS-ES.md)

Te ayuda a:

* Elegir el idioma (español o inglés)
* Configurar tu nombre y email en Git
* Iniciar sesión con `gh auth login --with-token`
* Guardar el token de forma segura (no se guarda en texto plano)

---

### ✅ Requisitos

* Tener [Git](https://git-scm.com) instalado
* Tener [GitHub CLI (`gh`)](https://cli.github.com) instalado

---

### 🚀 Cómo usar

1. Da permisos de ejecución al script:

```bash
chmod +x gh-auth.sh
```

2. Ejecuta el script:

```bash
./gh-auth.sh
```

3. Sigue los pasos:

* Selecciona el idioma
* Escribe tu usuario y email de GitHub
* Pega tu token cuando lo pida

---

### 🧪 Comprobar que funcionó

Después de ejecutarlo, puedes comprobar el estado con:

```bash
gh auth status
```

---

### 🔐 Seguridad

Tu token **no se guarda en archivos**. Se almacena de forma segura en el sistema:

* macOS → Keychain
* Linux → Archivo cifrado local (`~/.config/gh/hosts.yml`)
* Windows → Windows Credential Store

---

### 📷 Ejemplo

```bash
🌐 Choose your language / Elige tu idioma:
1) 🇬🇧 English
2) 🇪🇸 Español
➡️ Select language / Selecciona idioma (1 or 2): 2
🧑‍💻 Nombre de usuario de GitHub (para git config): paco
📧 Email de GitHub (para git config): paco@gmail.com
🔑 Introduce tu token de GitHub:
✅ Autenticación completada y token guardado
```
