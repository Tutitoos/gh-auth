## 🔐 Classic Personal Access Token (PAT)

Recommended scopes to use Git, GitHub Packages and Docker (ghcr.io):

| Scope             | Required  | What it's for                                        |
|------------------|-----------|------------------------------------------------------|
| `repo`           | ✅ Yes    | Full access to private/public repos (`git pull/push`, issues, releases, etc.) |
| `read:packages`  | ✅ Yes    | Download packages/images (`ghcr.io`, `npm`, etc.)   |
| `write:packages` | ✅ Yes    | Publish packages/images (`docker push`, `npm publish`, etc.) |
| `delete:packages`| ⚠️ Optional | Delete packages via UI or API                      |
| `workflow`       | ⚠️ Optional | Interact with GitHub Actions (CI/CD workflows)     |

---

## 🔒 Fine-grained Personal Access Token (FG-PAT)

Recommended permissions for secure, scoped access:

| Permission in UI | Required  | What it's for                                        |
|------------------|-----------|------------------------------------------------------|
| `Contents`       | ✅ Yes    | Git pull/push, branches, files, releases             |
| `Metadata`       | ✅ Yes    | Repository metadata access (collaborators, names, etc.) |
| `Packages`       | ❌ No     | **Not available for Fine-grained tokens**            |
| Others (`Issues`, `Pull requests`, etc.) | ⚠️ As needed | Add if you need extra repo access                   |

---

## 📌 Quick comparison

| Requirement                      | Classic PAT ✅ | Fine-grained PAT ❌ |
|----------------------------------|----------------|---------------------|
| Git `clone`, `push`, `pull`      | ✅ Yes         | ✅ Yes               |
| GitHub Packages (`npm`, etc.)    | ✅ Yes         | ❌ No                |
| Docker (`ghcr.io`)               | ✅ Yes         | ❌ No                |
| Granular control (per repo/file) | ❌ No          | ✅ Yes               |
| Best for CI/CD automation        | ✅ Yes         | ⚠️ Partially         |
