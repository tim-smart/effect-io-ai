Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.fromDir

Creates a `ConfigProvider` that reads configuration from a directory tree
on disk, where each file is a leaf value and each directory is a container.

When to use:
- Kubernetes ConfigMap / Secret volume mounts, where each key is a file
  under a mount path.
- Any file-per-key configuration layout.

Resolution rules:
- Regular file → `Value` node (file contents trimmed).
- Directory → `Record` node with immediate child names as keys.
- Not found → tries as file first, then as directory; returns
  `SourceError` if both fail.

Requires `Path` and `FileSystem` in the Effect context. Defaults to root
path `/`; override with `{ rootPath: "/etc/config" }`.

**Example** (Reading config from a directory)

```ts
import { ConfigProvider, Effect } from "effect"

const program = Effect.gen(function*() {
  const provider = yield* ConfigProvider.fromDir({
    rootPath: "/etc/myapp"
  })
  return provider
})
```

**See**

- `fromEnv` – for environment variables
- `fromDotEnv` – for `.env` files

**Signature**

```ts
declare const fromDir: (options?: { readonly rootPath?: string | undefined; }) => Effect.Effect<ConfigProvider, never, Path_.Path | FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L1094)

Since v4.0.0