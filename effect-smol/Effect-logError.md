Package: `effect`<br />
Module: `Effect`<br />

## Effect.logError

Logs one or more messages at the ERROR level.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.logError("Database connection failed")
  yield* Effect.logError(
    "Error code:",
    500,
    "Message:",
    "Internal server error"
  )

  // Can be used with error objects
  const error = new Error("Something went wrong")
  yield* Effect.logError("Caught error:", error.message)
})

Effect.runPromise(program)
// Output:
// timestamp=2023-... level=ERROR message="Database connection failed"
// timestamp=2023-... level=ERROR message="Error code: 500 Message: Internal server error"
// timestamp=2023-... level=ERROR message="Caught error: Something went wrong"
```

**Signature**

```ts
declare const logError: (...message: ReadonlyArray<any>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13029)

Since v2.0.0