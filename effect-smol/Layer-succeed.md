Package: `effect`<br />
Module: `Layer`<br />

## Layer.succeed

Constructs a layer that provides a single service from an already available
value.

**When to use**

Use when you need a `Layer` that provides a service from an already
constructed implementation without effectful acquisition.

**Example** (Creating a layer from a service implementation)

```ts
import { Context, Effect, Layer } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const DatabaseLive = Layer.succeed(Database, {
  query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Query result: ${sql}`))
})
```

**See**

- `sync` for constructing layers from lazy values

**Signature**

```ts
declare const succeed: { <I, S>(service: Context.Key<I, S>): (resource: S) => Layer<I>; <I, S>(service: Context.Key<I, S>, resource: Types.NoInfer<S>): Layer<I>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L807)

Since v2.0.0