Package: `effect`<br />
Module: `Layer`<br />

## Layer.withSpan

Wraps a Layer with a new tracing span, making all operations in the layer
constructor part of the named trace span.

This creates a new span for the layer's construction and execution. The span
is automatically ended when the layer's scope is closed. This is useful for
tracking the lifecycle and performance of layer initialization.

**Example**

```ts
import { Effect, Layer, ServiceMap } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Logger extends ServiceMap.Service<Logger, {
  readonly log: (msg: string) => Effect.Effect<void>
}>()("Logger") {}

// Create layers with tracing
const databaseLayer = Layer.effect(Database, Effect.gen(function*() {
  yield* Effect.log("Connecting to database")
  yield* Effect.sleep("100 millis")
  return {
    query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Result: ${sql}`))
  }
})).pipe(Layer.withSpan("database-initialization", {
  attributes: { dbType: "postgres" }
}))

const loggerLayer = Layer.succeed(Logger, {
  log: Effect.fn("Logger.log")((msg: string) => Effect.sync(() => console.log(msg)))
}).pipe(Layer.withSpan("logger-initialization"))

// Combine traced layers
const appLayer = Layer.mergeAll(databaseLayer, loggerLayer).pipe(
  Layer.withSpan("app-initialization", {
    onEnd: (span, exit) =>
      Effect.sync(() => {
        console.log(`Application initialization completed: ${exit._tag}`)
      })
  })
)

const program = Effect.gen(function*() {
  const database = yield* Database
  const logger = yield* Logger

  yield* logger.log("Application ready")
  return yield* database.query("SELECT * FROM users")
}).pipe(Effect.provide(appLayer)
)
```

**Signature**

```ts
declare const withSpan: { (name: string, options?: SpanOptions): <A, E, R>(self: Layer<A, E, R>) => Layer<A, E, Exclude<R, Tracer.ParentSpan>>; <A, E, R>(self: Layer<A, E, R>, name: string, options?: SpanOptions): Layer<A, E, Exclude<R, Tracer.ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L2178)

Since v4.0.0