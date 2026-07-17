Package: `effect`<br />
Module: `Layer`<br />

## Layer.sync

Constructs a layer lazily that provides a single service.

**When to use**

Use when you need a `Layer` that provides one service whose value is created
synchronously, but creation should be deferred until the layer is built.

**Details**

This is a lazy version of `succeed` where the service value is computed
synchronously only when the layer is built.

**Example** (Lazily providing a service)

```ts
import { Context, Effect, Layer } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const layer = Layer.sync(Database, () => ({
  query: (sql: string) => Effect.succeed(`Query: ${sql}`)
}))
```

**See**

- `succeed` for constructing layers from static values

**Signature**

```ts
declare const sync: { <I, S>(service: Context.Key<I, S>): (evaluate: LazyArg<S>) => Layer<I>; <I, S>(service: Context.Key<I, S>, evaluate: LazyArg<Types.NoInfer<S>>): Layer<I>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L890)

Since v2.0.0