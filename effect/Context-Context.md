Package: `effect`<br />
Module: `Context`<br />

## Context.Context

Immutable collection of service implementations used for dependency
injection in Effect programs.

**Details**

The type parameter tracks the service identifiers available in the context.
At runtime, services are stored by each key's string `key`.

**Example** (Creating a context with multiple services)

```ts
import { Context } from "effect"

// Create a context with multiple services
const Logger = Context.Service<{ log: (msg: string) => void }>("Logger")
const Database = Context.Service<{ query: (sql: string) => string }>(
  "Database"
)

const context = Context.make(Logger, {
  log: (msg: string) => console.log(msg)
})
  .pipe(Context.add(Database, { query: (sql) => `Result: ${sql}` }))
```

**Signature**

```ts
export interface Context<in Services> extends Equal.Equal, Pipeable, Inspectable {
  readonly [TypeId]: {
    readonly _Services: Types.Contravariant<Services>
  }
  readonly mapUnsafe: ReadonlyMap<string, any>
  mutable: boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L456)

Since v2.0.0