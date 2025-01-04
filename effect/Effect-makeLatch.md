# makeLatch

Creates a new `Latch`, starting in the specified state.

**Details**

This function initializes a `Latch` safely, ensuring proper runtime
guarantees. By default, the latch starts in the closed state.

To import and use `makeLatch` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.makeLatch
```

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function* () {
  // Create a latch, starting in the closed state
  const latch = yield* Effect.makeLatch(false)

  // Fork a fiber that logs "open sesame" when the latch is opened
  const fiber = yield* Console.log("open sesame").pipe(latch.whenOpen, Effect.fork)

  yield* Effect.sleep("1 second")

  // Open the latch
  yield* latch.open
  yield* fiber.await
})

// Effect.runFork(program)
// Output: open sesame (after 1 second)
```

**Signature**

```ts
export declare const makeLatch: (open?: boolean | undefined) => Effect<Latch, never, never>
```
