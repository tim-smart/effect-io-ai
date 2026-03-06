Package: `effect`<br />
Module: `References`<br />

## References.CurrentLogAnnotations

Reference for managing log annotations that are automatically added to all log entries.
These annotations provide contextual metadata that appears in every log message.

**Example**

```ts
import { Console, Effect, References } from "effect"

const logAnnotationExample = Effect.gen(function*() {
  // Get current annotations (empty by default)
  const current = yield* References.CurrentLogAnnotations
  console.log(current) // {}

  // Run with custom log annotations
  yield* Effect.provideService(
    Effect.gen(function*() {
      const annotations = yield* References.CurrentLogAnnotations
      console.log(annotations) // { requestId: "req-123", userId: "user-456", version: "1.0.0" }

      // All log entries will include these annotations
      yield* Console.log("Starting operation")
      yield* Console.info("Processing data")
    }),
    References.CurrentLogAnnotations,
    {
      requestId: "req-123",
      userId: "user-456",
      version: "1.0.0"
    }
  )

  // Run with extended annotations
  yield* Effect.provideService(
    Effect.gen(function*() {
      const extended = yield* References.CurrentLogAnnotations
      console.log(extended) // { requestId: "req-123", userId: "user-456", version: "1.0.0", operation: "data-sync", timestamp: 1234567890 }

      yield* Console.log("Operation completed with extended context")
    }),
    References.CurrentLogAnnotations,
    {
      requestId: "req-123",
      userId: "user-456",
      version: "1.0.0",
      operation: "data-sync",
      timestamp: 1234567890
    }
  )
})
```

**Signature**

```ts
declare const CurrentLogAnnotations: ServiceMap.Reference<ReadonlyRecord<string, unknown>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L414)

Since v4.0.0