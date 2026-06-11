Package: `effect`<br />
Module: `Layer`<br />

## Layer.effectContext

Constructs a layer from an effect that produces all services in a `Context`.

**When to use**

Use when you need a `Layer` that effectfully constructs a `Context` with
multiple services.

**Details**

This allows you to create a `Layer` from an effectful computation that
returns multiple services. The `Effect` is executed in the scope of the
layer.

**Example** (Creating a layer from an effectful context)

```ts
import { Context, Effect, Layer } from "effect"

class Database extends Context.Service<
  Database,
  { readonly query: (sql: string) => Effect.Effect<string> }
>()("Database") {}

const layer = Layer.effectContext(
  Effect.succeed(Context.make(Database, {
    query: (sql: string) => Effect.succeed(`Query: ${sql}`)
  }))
)
```

**See**

- `effect` for effectfully providing a single service

**Signature**

```ts
declare const effectContext: <A, E, R>(effect: Effect<Context.Context<A>, E, R>) => Layer<A, E, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1031)

Since v2.0.0