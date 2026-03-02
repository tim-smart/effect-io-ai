Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.adjust

Accesses a `TestClock` instance in the context and increments the time
by the specified duration, running any actions scheduled for on or before
the new time in order.

**Example**

```ts
import { Effect } from "effect"
import { TestClock } from "effect/testing"

const program = Effect.gen(function*() {
  let executed = false

  // Fork an effect that sleeps for 30 minutes
  const fiber = yield* Effect.gen(function*() {
    yield* Effect.sleep("30 minutes")
    executed = true
  }).pipe(Effect.forkChild)

  // Advance the clock by 30 minutes
  yield* TestClock.adjust("30 minutes")

  // The effect should now be executed
  console.log(executed) // true
})
```

**Signature**

```ts
declare const adjust: (duration: Duration.Input) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestClock.ts#L434)

Since v2.0.0