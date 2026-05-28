Package: `effect`<br />
Module: `Layer`<br />

## Layer.parentSpan

Constructs a layer that provides an existing span as the current parent span.

**Details**

The supplied span is made available through `Tracer.ParentSpan` for layers
that are built with this layer. This API does not create, end, or close the
span; the caller remains responsible for the span's lifetime.

**Example** (Using an existing parent span)

```ts
import { Console, Context, Effect, Layer, Tracer } from "effect"

class Database extends Context.Service<Database, {
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L2604)

Since v2.0.0