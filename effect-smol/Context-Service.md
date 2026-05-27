Package: `effect`<br />
Module: `Context`<br />

## Context.Service

Context key with helper methods for working with a service.

**Details**

`context` creates a one-service `Context`, `use` and `useSync` retrieve the
service from the current Effect context before applying a function, and `of`
is a type-level helper for service values.

**Example** (Defining a service key)

```ts
import { Context } from "effect"

// Define an identifier for a database service
const Database = Context.Service<{ query: (sql: string) => string }>(
  "Database"
)

// The key can be used to store and retrieve services
const context = Context.make(Database, { query: (sql) => `Result: ${sql}` })
```

**Signature**

```ts
export interface Service<in out Identifier, in out Shape> extends Key<Identifier, Shape> {
  of(this: void, self: Shape): Shape
  context(self: Shape): Context<Identifier>
  use<A, E, R>(f: (service: Shape) => Effect<A, E, R>): Effect<A, E, R | Identifier>
  useSync<A>(f: (service: Shape) => A): Effect<A, never, Identifier>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L138)

Since v4.0.0