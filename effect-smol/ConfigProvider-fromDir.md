Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.fromDir

Creates a `ConfigProvider` that reads configuration from a directory tree
on disk, where each file is a leaf value and each directory is a container.

**When to use**

Use when you use this for Kubernetes ConfigMap or Secret volume mounts, where each key is
a file under a mount path, or for any file-per-key configuration layout.

**Details**

Resolution tries a regular file first and returns a `Value` node with
trimmed file contents. If the file read fails, it tries a directory and
returns a `Record` node with immediate child names as keys. If both fail, it
returns `SourceError`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L1169)

Since v4.0.0