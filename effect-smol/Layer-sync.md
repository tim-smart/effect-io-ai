Package: `effect`<br />
Module: `Layer`<br />

## Layer.sync

Lazily constructs a layer from the specified value.

This is a lazy version of `succeed` where the service value is computed
synchronously only when the layer is built.

**Example**

```ts
import { Effect, Layer, Context } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const layer = Layer.sync(Database)(() => ({
  query: (sql: string) => Effect.succeed(`Query: ${sql}`)
}))
```

**Signature**

```ts
declare const sync: { <I, S>(service: Context.Key<I, S>): (evaluate: LazyArg<S>) => Layer<I>; <I, S>(service: Context.Key<I, S>, evaluate: LazyArg<Types.NoInfer<S>>): Layer<I>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L719)

Since v2.0.0