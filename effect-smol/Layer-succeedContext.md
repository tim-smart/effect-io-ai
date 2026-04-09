Package: `effect`<br />
Module: `Layer`<br />

## Layer.succeedContext

Constructs a layer from the specified value, which must return one or more
services.

This is a more general version of `succeed` that allows you to provide multiple
services at once through a `Context`.

**Example**

```ts
import { Effect, Layer, Context } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Logger extends Context.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

const context = Context.make(Database, {
  query: Effect.fn("Database.query")((sql: string) => Effect.succeed("result"))
}).pipe(
  Context.add(Logger, {
    log: (msg: string) => Effect.sync(() => console.log(msg))
  })
)

const layer = Layer.succeedContext(context)
```

**Signature**

```ts
declare const succeedContext: <A>(context: Context.Context<A>) => Layer<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L676)

Since v2.0.0