Package: `effect`<br />
Module: `Console`<br />

## Console.timeLog

Logs the current value of a timer that was previously started by calling time.

This function logs the elapsed time for a timer without stopping it,
allowing you to track progress of long-running operations.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.scoped(
    Effect.gen(function*() {
      yield* Console.time("long-operation")
      yield* Effect.sleep("500 millis")
      yield* Console.timeLog("long-operation", "Halfway done")
      yield* Effect.sleep("500 millis")
      // Timer ends when scope closes
    })
  )
})
```

**Signature**

```ts
declare const timeLog: (label?: string, ...args: ReadonlyArray<any>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L565)

Since v2.0.0