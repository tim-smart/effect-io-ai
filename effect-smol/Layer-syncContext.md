Package: `effect`<br />
Module: `Layer`<br />

## Layer.syncContext

Lazily constructs a layer that provides all services in a `Context`.

**When to use**

Use `syncContext` when multiple services can be created synchronously and
should be deferred until the layer is built. Use `sync` when you only need to
provide one service.

**Details**

This is a lazy version of `succeedContext` where the `Context` is computed
synchronously only when the layer is built.

**Example** (Lazily providing a context)

```ts
import { Context, Effect, Layer } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const layer = Layer.syncContext(() =>
  Context.make(Database, {
    query: (sql: string) => Effect.succeed(`Query: ${sql}`)
  })
)
```

**See**

- `sync` for lazily providing a single service
- `succeedContext` for providing an already available context

**Signature**

```ts
declare const syncContext: <A>(evaluate: LazyArg<Context.Context<A>>) => Layer<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L886)

Since v2.0.0