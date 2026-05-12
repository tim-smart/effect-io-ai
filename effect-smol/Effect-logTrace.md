Package: `effect`<br />
Module: `Effect`<br />

## Effect.logTrace

Logs one or more messages at the TRACE level.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.logTrace("Entering function processData")

  // Trace detailed execution flow
  for (let i = 0; i < 3; i++) {
    yield* Effect.logTrace("Loop iteration:", i, "Processing item")
  }

  yield* Effect.logTrace("Exiting function processData")
})

Effect.runPromise(program)
// Output:
// timestamp=2023-... level=TRACE message="Entering function processData"
// timestamp=2023-... level=TRACE message="Loop iteration: 0 Processing item"
// timestamp=2023-... level=TRACE message="Loop iteration: 1 Processing item"
// timestamp=2023-... level=TRACE message="Loop iteration: 2 Processing item"
// timestamp=2023-... level=TRACE message="Exiting function processData"
```

**Signature**

```ts
declare const logTrace: (...message: ReadonlyArray<any>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13172)

Since v2.0.0