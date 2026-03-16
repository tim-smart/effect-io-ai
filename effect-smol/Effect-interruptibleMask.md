Package: `effect`<br />
Module: `Effect`<br />

## Effect.interruptibleMask

This function behaves like `interruptible`, but it also provides a
`restore` function. This function can be used to restore the interruptibility
of any specific region of code.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.interruptibleMask((restore) =>
  Effect.gen(function*() {
    yield* Console.log("Interruptible phase...")
    yield* Effect.sleep("1 second")

    // Make this part uninterruptible
    yield* restore(
      Effect.gen(function*() {
        yield* Console.log("Uninterruptible phase...")
        yield* Effect.sleep("2 seconds")
      })
    )

    yield* Console.log("Back to interruptible")
  })
)
```

**Signature**

```ts
declare const interruptibleMask: <A, E, R>(f: (restore: <AX, EX, RX>(effect: Effect<AX, EX, RX>) => Effect<AX, EX, RX>) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6990)

Since v2.0.0