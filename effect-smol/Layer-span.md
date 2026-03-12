Package: `effect`<br />
Module: `Layer`<br />

## Layer.span

Constructs a new `Layer` which creates a span and registers it as the current
parent span.

This allows you to create a traced scope for layer construction, making all
operations within the layer constructor part of the same trace span. The span
is automatically closed when the layer's scope is closed.

**Example**

```ts
import { Console, Effect, Layer, ServiceMap, type Tracer } from "effect"

class Database extends ServiceMap.Service<Database, {
  readonly query: (sql: string) => Effect.Effect<string>
}>()("Database") {}

// Create a traced layer - all operations performed during construction of
// the `Database` service are part of the "database-init" span
const databaseLayer = Layer.effect(Database, Effect.gen(function*() {
  // These operations are traced under "database-init" span
  yield* Effect.log("Connecting to database")
  yield* Effect.sleep("100 millis")
  yield* Effect.log("Database connected")

  const parentSpan = yield* Effect.currentParentSpan
  yield* Console.log((parentSpan as Tracer.Span).name) // "database-init"

  return {
    query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Result: ${sql}`))
  }
})).pipe(Layer.provide(Layer.span("database-init")))

// Can also use the `onEnd` callback to execute logic when the span ends
const tracedLayer = Layer.span("service-initialization", {
  attributes: { version: "1.0.0" },
  onEnd: (span, exit) =>
    Effect.sync(() => {
      console.log(`Span ${span.name} ended with:`, exit._tag)
    })
})
```

**Signature**

```ts
declare const span: (name: string, options?: SpanOptions) => Layer<Tracer.ParentSpan>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1963)

Since v4.0.0