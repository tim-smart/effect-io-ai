Package: `effect`<br />
Module: `Context`<br />

## Context.Service.Shape

Extracts the service implementation type stored behind a `Context` service
key.

**Example** (Extracting a service shape)

```ts
import { Context } from "effect"

const Database = Context.Service<{ query: (sql: string) => string }>(
  "Database"
)

// Extract the service shape from the service
type DatabaseService = Context.Service.Shape<typeof Database>
// DatabaseService is { query: (sql: string) => string }
```

**Signature**

```ts
type Shape<T> = T extends Key<infer _I, infer S> ? S : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L372)

Since v4.0.0