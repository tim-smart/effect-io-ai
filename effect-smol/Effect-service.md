Package: `effect`<br />
Module: `Effect`<br />

## Effect.service

Accesses a service from the context.

**Example**

```ts
import { Effect, ServiceMap } from "effect"

interface Database {
  readonly query: (sql: string) => Effect.Effect<string>
}

const Database = ServiceMap.Service<Database>("Database")

const program = Effect.gen(function*() {
  const db = yield* Effect.service(Database)
  return yield* db.query("SELECT * FROM users")
})
```

**Signature**

```ts
declare const service: <I, S>(service: ServiceMap.Key<I, S>) => Effect<S, never, I>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5755)

Since v4.0.0