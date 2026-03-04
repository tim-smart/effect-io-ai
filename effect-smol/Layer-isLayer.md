Package: `effect`<br />
Module: `Layer`<br />

## Layer.isLayer

Returns `true` if the specified value is a `Layer`, `false` otherwise.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

const dbLayer = Layer.succeed(Database)({
  query: Effect.fn("Database.query")((sql: string) => Effect.succeed("result"))
})
const notALayer = { someProperty: "value" }

console.log(Layer.isLayer(dbLayer)) // true
console.log(Layer.isLayer(notALayer)) // false
```

**Signature**

```ts
declare const isLayer: (u: unknown) => u is Layer<unknown, unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L175)

Since v2.0.0