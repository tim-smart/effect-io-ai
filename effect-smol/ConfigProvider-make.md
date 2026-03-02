Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.make

Creates a `ConfigProvider` from a raw lookup function.

When to use:
- Implementing a provider backed by a custom store (database, remote API,
  in-memory map, etc.).

The `get` callback receives a `Path` and must return
`Effect<Node | undefined, SourceError>`. Return `undefined` when the path
does not exist; fail with `SourceError` only for actual I/O errors.

The optional `mapInput` and `prefix` parameters are wired into the
resulting `load` method so that combinators like `mapInput` and
`nested` can compose without wrapping `get`.

**Example** (A simple in-memory provider)

```ts
import { ConfigProvider, Effect } from "effect"

const data: Record<string, string> = {
  host: "localhost",
  port: "5432"
}

const provider = ConfigProvider.make((path) => {
  const key = path.join(".")
  const value = data[key]
  return Effect.succeed(
    value !== undefined ? ConfigProvider.makeValue(value) : undefined
  )
})
```

**See**

- `fromEnv` – pre-built provider for environment variables
- `fromUnknown` – pre-built provider for JSON objects

**Signature**

```ts
declare const make: (get: (path: Path) => Effect.Effect<Node | undefined, SourceError>, mapInput?: (path: Path) => Path, prefix?: Path) => ConfigProvider
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L412)

Since v4.0.0