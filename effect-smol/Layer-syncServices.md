Package: `effect`<br />
Module: `Layer`<br />

## Layer.syncServices

Lazily constructs a layer from the specified value, which must return one or more
services.

This is a lazy version of `succeedServices` where the ServiceMap is computed
synchronously only when the layer is built.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const layer = Layer.syncServices(() =>
  ServiceMap.make(Database, {
    query: (sql: string) => Effect.succeed(`Query: ${sql}`)
  })
)
```

**Signature**

```ts
declare const syncServices: <A>(evaluate: LazyArg<ServiceMap.ServiceMap<A>>) => Layer<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L730)

Since v2.0.0