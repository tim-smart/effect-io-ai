Package: `effect`<br />
Module: `Effect`<br />

## Effect.logDebug

Logs one or more messages at the DEBUG level.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.logDebug("Debug mode enabled")

  const userInput = { name: "Alice", age: 30 }
  yield* Effect.logDebug("Processing user input:", userInput)

  // Useful for detailed diagnostic information
  yield* Effect.logDebug("Variable state:", "x=10", "y=20", "z=30")
})

Effect.runPromise(program)
// Output:
// timestamp=2023-... level=DEBUG message="Debug mode enabled"
// timestamp=2023-... level=DEBUG message="Processing user input: [object Object]"
// timestamp=2023-... level=DEBUG message="Variable state: x=10 y=20 z=30"
```

**Signature**

```ts
declare const logDebug: (...message: ReadonlyArray<any>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13146)

Since v2.0.0