Package: `effect`<br />
Module: `Layer`<br />

## Layer.parentSpan

Constructs a new `Layer` which takes an existing span and registers it as the
current parent span.

This allows you to create a traced scope for layer construction, making all
operations within the layer constructor part of the same trace span. The span
is automatically closed when the layer's scope is closed.

**Example**

```ts
import { Console, Effect, Layer, ServiceMap, Tracer } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

// Create a layer that uses an existing span as parent
const databaseLayer = Layer.effect(
  Database,
  Effect.gen(function*() {
    yield* Effect.log("Initializing database")

    const parentSpan = yield* Effect.currentParentSpan
    yield* Console.log(parentSpan.spanId) // "42"

    return {
      query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Result: ${sql}`))
    }
  })
).pipe(Layer.provide(Layer.parentSpan(Tracer.externalSpan({
  spanId: "42",
  traceId: "000"
}))))
```

**Signature**

```ts
declare const parentSpan: (span: Tracer.AnySpan) => Layer<Tracer.ParentSpan>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L2144)

Since v4.0.0