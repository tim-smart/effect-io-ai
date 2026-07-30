Package: `effect`<br />
Module: `Effect`<br />

## Effect.makeLatch

Creates a new `Latch`, starting in the specified state.

**Details**

This function initializes a `Latch` safely, ensuring proper runtime
guarantees. By default, the latch starts in the closed state.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  // Create a latch, starting in the closed state
  const latch = yield* Effect.makeLatch(false)

  // Fork a fiber that logs "open sesame" when the latch is opened
  const fiber = yield* Console.log("open sesame").pipe(
    latch.whenOpen,
    Effect.fork
  )

  yield* Effect.sleep("1 second")

  // Open the latch
  yield* latch.open
  yield* fiber.await
})

Effect.runFork(program)
// Output: open sesame (after 1 second)
```

**Signature**

```ts
declare const makeLatch: (open?: boolean | undefined) => Effect<Latch, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12008)

Since v3.8.0