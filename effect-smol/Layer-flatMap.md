Package: `effect`<br />
Module: `Layer`<br />

## Layer.flatMap

Constructs a layer dynamically based on the output of this layer.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Config extends ServiceMap.Service<Config, {
  readonly dbUrl: string
  readonly logLevel: string
}>()("Config") {}

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Logger extends ServiceMap.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

// Base config layer
const configLayer = Layer.succeed(Config)({
  dbUrl: "postgres://localhost:5432/mydb",
  logLevel: "debug"
})

// Dynamically create services based on config
const dynamicServiceLayer = configLayer.pipe(
  Layer.flatMap((services) => {
    const config = ServiceMap.get(services, Config)

    // Create database layer based on config
    const dbLayer = Layer.succeed(Database)({
      query: (sql: string) =>
        Effect.succeed(
          `Querying ${config.dbUrl}: ${sql}`
        )
    })

    // Create logger layer based on config
    const loggerLayer = Layer.succeed(Logger)({
      log: (msg: string) =>
        config.logLevel === "debug"
          ? Effect.sync(() => console.log(`[DEBUG] ${msg}`))
          : Effect.sync(() => console.log(msg))
    })

    // Return combined layer
    return Layer.mergeAll(dbLayer, loggerLayer)
  })
)

// Use the dynamic services
const program = Effect.gen(function*() {
  const database = yield* Database
  const logger = yield* Logger

  yield* logger.log("Starting database query")
  const result = yield* database.query("SELECT * FROM users")

  return result
}).pipe(
  Effect.provide(dynamicServiceLayer)
)
```

**Signature**

```ts
declare const flatMap: { <A, A2, E2, R2>(f: (context: ServiceMap.ServiceMap<A>) => Layer<A2, E2, R2>): <E, R>(self: Layer<A, E, R>) => Layer<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Layer<A, E, R>, f: (context: ServiceMap.ServiceMap<A>) => Layer<A2, E2, R2>): Layer<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1294)

Since v2.0.0