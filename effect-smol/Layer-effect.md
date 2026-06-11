Package: `effect`<br />
Module: `Layer`<br />

## Layer.effect

Constructs a layer from an effect that produces a single service.

**When to use**

Use when you need to construct a `Layer`-provided service with an `Effect`,
dependencies, or scoped resource acquisition.

**Details**

This allows you to create a `Layer` from an `Effect` that produces a service.
The `Effect` is executed in the scope of the layer, allowing for proper
resource management.

**Example** (Creating a layer from an effect)

```ts
import { Context, Effect, Layer } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const layer = Layer.effect(Database,
  Effect.sync(() => ({
    query: (sql: string) => Effect.succeed(`Query: ${sql}`)
  }))
)
```

**See**

- `effectContext` for effectfully providing multiple services
- `effectDiscard` for running construction work without providing services

**Signature**

```ts
declare const effect: { <I, S>(service: Context.Key<I, S>): <E, R>(effect: Effect<S, E, R>) => Layer<I, E, Exclude<R, Scope.Scope>>; <I, S, E, R>(service: Context.Key<I, S>, effect: Effect<Types.NoInfer<S>, E, R>): Layer<I, E, Exclude<R, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L974)

Since v2.0.0