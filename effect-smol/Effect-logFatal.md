Package: `effect`<br />
Module: `Effect`<br />

## Effect.logFatal

Logs one or more messages at the FATAL level.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  try {
    // Simulate a critical system failure
    throw new Error("System memory exhausted")
  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : String(error)
    yield* Effect.logFatal("Critical system failure:", errorMessage)
    yield* Effect.logFatal("System shutting down")
  }
})

Effect.runPromise(program)
// Output:
// timestamp=2023-... level=FATAL message="Critical system failure: System memory exhausted"
// timestamp=2023-... level=FATAL message="System shutting down"
```

**Signature**

```ts
declare const logFatal: (...message: ReadonlyArray<any>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L12979)

Since v2.0.0