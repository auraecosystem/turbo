>_turbo dev
>_ npm i turbo
```bash
"git clone" https://github.com/auraecosystem/make.universe.git
cd make.universe
"git clone" https://github.com/auraecosystem/turbo.build.git
cd turbo.build
# Global install
pnpm add turbo --global
# Install in repository
pnpm add turbo --save-dev --workspace-root

# Global install
bun install turbo --global
# Install in repository
bun install turbo --dev
```
>_ npm i turbo
```json
{
  "$schema": "https://turborepo.dev/schema.json",
  "tasks": {
    "build": {
      "outputs": ["dist/**"]
    },
    "check-types": {
      "dependsOn": ["^check-types"]
    },
    "dev": {
      "persistent": true,
      "cache": false
    }
  }
}
```
>_yarn
```bash
# Use an example listed below
yarn dlx create-turbo@latest --example [turbo.build]
# Use a GitHub repository from the community
yarn dlx create-turbo@latest --example ["git clone" https://github.com/auraecosystem/turbo.build.git]
