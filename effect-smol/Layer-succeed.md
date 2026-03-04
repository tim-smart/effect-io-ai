Package: `effect`<br />
Module: `Layer`<br />

## Layer.succeed

Constructs a layer from the specified value.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Logger extends ServiceMap.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

// Create layers from concrete service implementations
const databaseLayer = Layer.succeed(Database)({
  query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Query result: ${sql}`))
})

const loggerLayer = Layer.succeed(Logger)({
  log: Effect.fn("Logger.log")((msg: string) => Effect.sync(() => console.log(`[LOG] ${msg}`)))
})

// Use the layers in a program
const program = Effect.gen(function*() {
  const database = yield* Database
  const logger = yield* Logger

  yield* logger.log("Starting database query")
  const result = yield* database.query("SELECT * FROM users")
  yield* logger.log(`Query completed: ${result}`)

  return result
}).pipe(
  Effect.provide(Layer.mergeAll(databaseLayer, loggerLayer))
)
```

**Signature**

```ts
declare const succeed: { <I, S>(service: ServiceMap.Key<I, S>): (resource: S) => Layer<I>; <I, S>(service: ServiceMap.Key<I, S>, resource: Types.NoInfer<S>): Layer<I>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L608)

Since v2.0.0