Package: `effect`<br />
Module: `Layer`<br />

## Layer.makeMemoMapUnsafe

Constructs a `MemoMap` that can be used to build additional layers.

**Example** (Creating a memo map unsafely)

```ts
import { Effect, Layer, Context } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

// Create a memo map for manual layer building
const program = Effect.gen(function*() {
  const memoMap = Layer.makeMemoMapUnsafe()
  const scope = yield* Effect.scope

  const dbLayer = Layer.succeed(Database)({
    query: Effect.fn("Database.query")((sql: string) => Effect.succeed("result"))
  })
  const context = yield* Layer.buildWithMemoMap(dbLayer, memoMap, scope)

  return Context.get(context, Database)
})
```

**Signature**

```ts
declare const makeMemoMapUnsafe: () => MemoMap
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L432)

Since v4.0.0