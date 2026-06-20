Package: `effect`<br />
Module: `Context`<br />

## Context.Service.Identifier

Extracts the identifier, or requirement type, associated with a `Context`
service key.

**Example** (Extracting a service identifier)

```ts
import { Context } from "effect"

const Database = Context.Service<{ query: (sql: string) => string }>(
  "Database"
)

// Extract the identifier type from a key
type DatabaseId = Context.Service.Identifier<typeof Database>
// DatabaseId is the identifier type
```

**Signature**

```ts
type Identifier<T> = T extends Key<infer I, infer _S> ? I : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L422)

Since v2.0.0