Package: `effect`<br />
Module: `References`<br />

## References.CurrentLogSpans

Reference for managing log spans that track the duration and hierarchy of operations.
Each span represents a labeled time period for performance analysis and debugging.

**Example**

```ts
import { Console, Effect, References } from "effect"

const logSpanExample = Effect.gen(function*() {
  // Get current spans (empty by default)
  const current = yield* References.CurrentLogSpans
  console.log(current.length) // 0

  // Add a log span manually
  const startTime = Date.now()
  yield* Effect.provideService(
    Effect.gen(function*() {
      // Simulate some work
      yield* Effect.sleep("100 millis")
      yield* Console.log("Database operation in progress")

      const spans = yield* References.CurrentLogSpans
      console.log("Active spans:", spans.map(([label]) => label)) // ["database-connection"]
    }),
    References.CurrentLogSpans,
    [["database-connection", startTime]]
  )

  // Add another span
  yield* Effect.provideService(
    Effect.gen(function*() {
      const spans = yield* References.CurrentLogSpans
      console.log("Active spans:", spans.map(([label]) => label)) // ["database-connection", "data-processing"]

      yield* Console.log("Multiple operations in progress")
    }),
    References.CurrentLogSpans,
    [
      ["database-connection", startTime],
      ["data-processing", Date.now()]
    ]
  )

  // Clear spans when operations complete
  yield* Effect.provideService(
    Effect.gen(function*() {
      const spans = yield* References.CurrentLogSpans
      console.log("Active spans:", spans.length) // 0
    }),
    References.CurrentLogSpans,
    []
  )
})
```

**Signature**

```ts
declare const CurrentLogSpans: ServiceMap.Reference<ReadonlyArray<[label: string, timestamp: number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L587)

Since v4.0.0