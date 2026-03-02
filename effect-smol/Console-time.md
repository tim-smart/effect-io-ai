Package: `effect`<br />
Module: `Console`<br />

## Console.time

Starts a timer that can be used to compute the duration of an operation.

This function returns a scoped Effect that starts a timer when entered
and automatically ends the timer when the scope is finalized.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.scoped(
    Effect.gen(function*() {
      yield* Console.time("operation-timer")
      yield* Effect.sleep("1 second")
      yield* Console.log("Operation completed")
      // Timer ends automatically when scope closes
    })
  )
})
```

**Signature**

```ts
declare const time: (label?: string | undefined) => Effect.Effect<void, never, Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L526)

Since v2.0.0