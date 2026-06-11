Package: `effect`<br />
Module: `Layer`<br />

## Layer.syncContext

Constructs a layer lazily that provides all services in a `Context`.

**When to use**

Use when you need a `Layer` that creates multiple services synchronously but
defers that work until the layer is built.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L935)

Since v2.0.0