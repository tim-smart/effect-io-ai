Package: `effect`<br />
Module: `Layer`<br />

## Layer.withParentSpan

Wraps a `Layer` with a new tracing span and sets the span as the parent span.

This attaches a layer to an existing trace span, making all operations within
the layer children of the provided parent span. This is useful for integrating
layer construction into an existing trace hierarchy.

**Example**

```ts
import { Effect, Layer, ServiceMap, Tracer } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Cache extends ServiceMap.Service<Cache, {
  readonly get: (key: string) => Effect.Effect<string | null>
}>()("Cache") {}

// Create layers
const DatabaseLayer = Layer.effect(Database, Effect.gen(function*() {
  yield* Effect.log("Connecting to database")
  return {
    query: (sql: string) => Effect.succeed(`DB: ${sql}`)
  }
}))

const CacheLayer = Layer.effect(Cache, Effect.gen(function*() {
  yield* Effect.log("Connecting to cache")
  return {
    get: (key: string) => Effect.succeed(`Cache: ${key}`)
  }
}))

// Use with an existing parent span from Effect.withSpan
const program = Effect.withSpan("application-startup")(
  Effect.gen(function*() {
    const parentSpan = yield* Tracer.ParentSpan

    // Both layers will be children of "application-startup" span
    const AppLayer = Layer.mergeAll(DatabaseLayer, CacheLayer).pipe(
      Layer.withParentSpan(parentSpan)
    )

    const services = yield* Layer.build(AppLayer)
    const database = ServiceMap.get(services, Database)
    const cache = ServiceMap.get(services, Cache)

    const dbResult = yield* database.query("SELECT * FROM users")
    const cacheResult = yield* cache.get("user:123")

    return { dbResult, cacheResult }
  })
)
```

**Signature**

```ts
declare const withParentSpan: { (span: Tracer.AnySpan, options?: Tracer.TraceOptions): <A, E, R>(self: Layer<A, E, R>) => Layer<A, E, Exclude<R, Tracer.ParentSpan>>; <A, E, R>(self: Layer<A, E, R>, span: Tracer.AnySpan, options?: Tracer.TraceOptions): Layer<A, E, Exclude<R, Tracer.ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L2173)

Since v4.0.0