Package: `effect`<br />
Module: `References`<br />

## References.CurrentLogSpans

Context reference for managing log spans that track the duration and hierarchy of operations.
Each span represents a labeled time period for performance analysis and debugging.

**When to use**

Use to carry the active log span stack that should be included with log
entries in the current context.

**Example** (Tracking log spans)

```ts
import { Console, Effect, References } from "effect"

const logSpanExample = Effect.gen(function*() {
  // Get current spans (empty by default)
  const current = yield* References.CurrentLogSpans
  console.log(current.length) // 0

  // Add a log span manually
  const databaseConnectionStartedAt = 0
  yield* Effect.provideService(
    Effect.gen(function*() {
      // Simulate some work
      yield* Effect.sleep("100 millis")
      yield* Console.log("Database operation in progress")

      const spans = yield* References.CurrentLogSpans
      console.log("Active spans:", spans.map(([label]) => label)) // ["database-connection"]
    }),
    References.CurrentLogSpans,
    [["database-connection", databaseConnectionStartedAt]]
  )

  // Add another span
  const dataProcessingStartedAt = 100
  yield* Effect.provideService(
    Effect.gen(function*() {
      const spans = yield* References.CurrentLogSpans
      console.log("Active spans:", spans.map(([label]) => label)) // ["database-connection", "data-processing"]

      yield* Console.log("Multiple operations in progress")
    }),
    References.CurrentLogSpans,
    [
      ["database-connection", databaseConnectionStartedAt],
      ["data-processing", dataProcessingStartedAt]
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
declare const CurrentLogSpans: Context.Reference<ReadonlyArray<[label: string, timestamp: number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L403)

Since v4.0.0