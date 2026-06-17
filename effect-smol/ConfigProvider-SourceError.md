Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.SourceError

Typed error indicating that a configuration source could not be read.

**When to use**

Use when you need to report that a custom provider's underlying store is
unreachable or produced an I/O error while reading configuration data.

**Gotchas**

Do not use `SourceError` for "key not found". That case is represented by
returning `undefined` from `load`.

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

- `ConfigProvider` – the interface whose `load` may fail with this
  error

**Signature**

```ts
declare class SourceError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L199)

Since v4.0.0