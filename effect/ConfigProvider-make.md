Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.make

Creates a `ConfigProvider` from a raw lookup function.

**When to use**

Use when implementing a provider backed by a custom store, such as a
database, remote API, or in-memory map.

**Details**

The `get` callback receives a `Path` and must return
`Effect<Node | undefined, SourceError>`. Return `undefined` when the path
does not exist; fail with `SourceError` only for actual I/O errors.

**Example** (Creating a simple in-memory provider)

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
declare const make: (get: (path: Path) => Effect.Effect<Node | undefined, SourceError>) => ConfigProvider
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L400)

Since v2.0.0