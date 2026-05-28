Package: `effect`<br />
Module: `Layer`<br />

## Layer.withParentSpan

Wraps a layer so spans created during its construction use the supplied span
as their parent.

**Details**

Use this to attach layer construction to an existing trace hierarchy. This API
does not create or end the supplied parent span.

When the supplied span is a native `Span`, layer construction also receives
diagnostic information that helps associate failures with the layer call site.
External spans are only installed as the parent span and do not add this
diagnostic call-site information.

**Example** (Attaching layers to an existing parent span)

```ts
import { Context, Effect, Layer, Tracer } from "effect"

class Database extends Context.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

class Cache extends Context.Service<Cache, {
  readonly get: (key: string) => Effect.Effect<string | null>
}>()("Cache") {}

// Create layers
const DatabaseLayer = Layer.effect(Database, Effect.gen(function*() {
  yield* Effect.log("Connecting to database")
  return {
    query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`DB: ${sql}`))
  }
}))

const CacheLayer = Layer.effect(Cache, Effect.gen(function*() {
  yield* Effect.log("Connecting to cache")
  return {
    get: Effect.fn("Cache.get")((key: string) => Effect.succeed(`Cache: ${key}`))
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

    const context = yield* Layer.build(AppLayer)
    const database = Context.get(context, Database)
    const cache = Context.get(context, Cache)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L2778)

Since v2.0.0