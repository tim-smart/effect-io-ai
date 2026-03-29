Package: `effect`<br />
Module: `Layer`<br />

## Layer.unwrap

Unwraps a Layer from an Effect, flattening the nested structure.

This is useful when you have an Effect that produces a Layer, and you want to
use that Layer directly. The resulting Layer will have the combined error and
dependency types from both the outer Effect and the inner Layer.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const layerEffect = Effect.succeed(
  Layer.succeed(Database)({ query: Effect.fn("Database.query")((sql: string) => Effect.succeed("result")) })
)

const unwrappedLayer = Layer.unwrap(layerEffect)
```

**Signature**

```ts
declare const unwrap: <A, E1, R1, E, R>(self: Effect<Layer<A, E1, R1>, E, R>) => Layer<A, E | E1, R1 | Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L898)

Since v4.0.0