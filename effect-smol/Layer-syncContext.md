Package: `effect`<br />
Module: `Layer`<br />

## Layer.syncContext

Lazily constructs a layer from the specified value, which must return one or more
services.

This is a lazy version of `succeedContext` where the Context is computed
synchronously only when the layer is built.

**Example**

```ts
import { Effect, Layer, Context } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const layer = Layer.syncContext(() =>
  Context.make(Database, {
    query: (sql: string) => Effect.succeed(`Query: ${sql}`)
  })
)
```

**Signature**

```ts
declare const syncContext: <A>(evaluate: LazyArg<Context.Context<A>>) => Layer<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L754)

Since v2.0.0