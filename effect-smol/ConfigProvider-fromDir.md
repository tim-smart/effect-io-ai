Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.fromDir

Creates a `ConfigProvider` that reads configuration from a directory tree
on disk, where each file is a leaf value and each directory is a container.

**When to use**

Use when you expose each config key as a file under a directory, such as
Kubernetes ConfigMap or Secret volume mounts.

**Details**

Resolution tries a regular file first and returns a `Value` node for
non-empty trimmed file contents. If the file read fails, it tries a directory
and returns a `Record` node with immediate child names as keys. If both fail
with `NotFound`, it returns `undefined`. Other platform failures return
`SourceError`.

Requires `Path` and `FileSystem` in the Effect context. Defaults to root
path `/`; override with `{ rootPath: "/etc/config" }`.

Literal empty strings are treated as missing values by default after file
contents are trimmed. Pass `{ preserveEmptyStrings: true }` to keep empty
strings as explicit values. Directory listings still reflect the file names
present on disk.

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
declare const fromDir: (options?: { readonly rootPath?: string | undefined; readonly preserveEmptyStrings?: boolean | undefined; }) => Effect.Effect<ConfigProvider, never, Path_.Path | FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L1166)

Since v4.0.0