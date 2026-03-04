Package: `effect`<br />
Module: `Effect`<br />

## Effect.uninterruptibleMask

Disables interruption and provides a restore function to restore the
interruptible state within the effect.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.uninterruptibleMask((restore) =>
  Effect.gen(function*() {
    yield* Console.log("Uninterruptible phase...")
    yield* Effect.sleep("1 second")

    // Restore interruptibility for this part
    yield* restore(
      Effect.gen(function*() {
        yield* Console.log("Interruptible phase...")
        yield* Effect.sleep("2 seconds")
      })
    )

    yield* Console.log("Back to uninterruptible")
  })
)
```

**Signature**

```ts
declare const uninterruptibleMask: <A, E, R>(f: (restore: <AX, EX, RX>(effect: Effect<AX, EX, RX>) => Effect<AX, EX, RX>) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6908)

Since v2.0.0