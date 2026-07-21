Package: `effect`<br />
Module: `Effect`<br />

## Effect.service

Accesses a service from the context.

**Example** (Accessing a required service)

```ts
import { Context, Effect } from "effect"

interface Database {
  readonly query: (sql: string) => Effect.Effect<string>
}

const Database = Context.Service<Database>("Database")

const program = Effect.gen(function*() {
  const db = yield* Effect.service(Database)
  return yield* db.query("SELECT * FROM users")
})
```

**Signature**

```ts
declare const service: <I, S>(service: Context.Key<I, S>) => Effect<S, never, I>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6082)

Since v4.0.0