Package: `effect`<br />
Module: `References`<br />

## References.TracerSpanAnnotations

Reference for managing span annotations that are automatically added to all new spans.
These annotations provide context and metadata that applies across multiple spans.

**Example**

```ts
import { Effect, References } from "effect"

const spanAnnotationExample = Effect.gen(function*() {
  // Get current annotations (empty by default)
  const current = yield* References.TracerSpanAnnotations
  console.log(current) // {}

  // Set global span annotations
  yield* Effect.provideService(
    Effect.gen(function*() {
      // Get current annotations
      const annotations = yield* References.TracerSpanAnnotations
      console.log(annotations) // { service: "user-service", version: "1.2.3", environment: "production" }

      // All spans created will include these annotations
      yield* Effect.gen(function*() {
        // Add more specific annotations for this span
        yield* Effect.annotateCurrentSpan("userId", "123")
        yield* Effect.log("Processing user")
      })
    }),
    References.TracerSpanAnnotations,
    {
      service: "user-service",
      version: "1.2.3",
      environment: "production"
    }
  )

  // Clear annotations
  yield* Effect.provideService(
    Effect.gen(function*() {
      const annotations = yield* References.TracerSpanAnnotations
      console.log(annotations) // {}
    }),
    References.TracerSpanAnnotations,
    {}
  )
})
```

**Signature**

```ts
declare const TracerSpanAnnotations: ServiceMap.Reference<ReadonlyRecord<string, unknown>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L408)

Since v4.0.0