Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.SourceError

Typed error indicating that a configuration source could not be read.

When to use:
- Return from a custom provider's `get` callback when the underlying store
  is unreachable or produces an I/O error.
- Match on in error channels when consuming provider output directly.

Not used for "key not found" — that case is represented by returning
`undefined` from `load` / `get`.

**Example** (Failing with a SourceError)

```ts
import { ConfigProvider, Effect } from "effect"

const provider = ConfigProvider.make((_path) =>
  Effect.fail(
    new ConfigProvider.SourceError({ message: "connection refused" })
  )
)
```

**See**

- `ConfigProvider` – the interface whose `load`/`get` may fail
  with this error

**Signature**

```ts
declare class SourceError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L252)

Since v4.0.0