## 🔐 Classic Personal Access Token (PAT)

Permisos recomendados para usar Git, GitHub Packages y Docker (ghcr.io):

| Scope             | Obligatorio | ¿Para qué sirve?                                     |
|------------------|-------------|------------------------------------------------------|
| `repo`           | ✅ Sí       | Acceso completo a repos privados y públicos (`git pull/push`, issues, releases, etc.) |
| `read:packages`  | ✅ Sí       | Descargar paquetes o imágenes (`ghcr.io`, `npm`, etc.) |
| `write:packages` | ✅ Sí       | Subir paquetes o imágenes (`docker push`, `npm publish`, etc.) |
| `delete:packages`| ⚠️ Opcional | Eliminar paquetes desde la UI/API                    |
| `workflow`       | ⚠️ Opcional | Permite interactuar con GitHub Actions (CI/CD)      |

---

## 🔒 Fine-grained Personal Access Token (FG-PAT)

Permisos recomendados para acceso más limitado y seguro:

| Permiso en la UI | Obligatorio | ¿Para qué sirve?                                     |
|------------------|-------------|------------------------------------------------------|
| `Contents`       | ✅ Sí       | Git pull/push, ramas, archivos, releases            |
| `Metadata`       | ✅ Sí       | Acceso a metadata del repo (colaboradores, nombres, etc.) |
| `Packages`       | ❌ No       | **No disponible en Fine-grained tokens**            |
| Otros (`Issues`, `Pull requests`, etc.) | ⚠️ Según necesidad | Agregar si necesitas esos accesos                    |

---

## 📌 Comparación rápida

| Requisito                         | Classic PAT ✅ | Fine-grained PAT ❌ |
|----------------------------------|----------------|---------------------|
| Git `clone`, `push`, `pull`      | ✅ Sí           | ✅ Sí                |
| GitHub Packages (`npm`, etc.)    | ✅ Sí           | ❌ No                |
| Docker (`ghcr.io`)               | ✅ Sí           | ❌ No                |
| Control granular (permiso por recurso) | ❌ No      | ✅ Sí                |
| Recomendado para CI/CD automatizado | ✅ Sí       | ⚠️ Parcial           |
