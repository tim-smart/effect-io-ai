Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.TestClock

A `TestClock` simplifies deterministically and efficiently testing effects
which involve the passage of time.

Instead of waiting for actual time to pass, `sleep` and methods implemented
in terms of it schedule effects to take place at a given clock time. Users
can adjust the clock time using the `adjust` and `setTime` methods, and all
effects scheduled to take place on or before that time will automatically be
run in order.

For example, here is how we can test `Effect.timeout` using `TestClock`:

```ts
import { Effect, Fiber, Option, pipe } from "effect"
import { TestClock } from "effect/testing"
import * as assert from "node:assert"

Effect.gen(function*() {
  const fiber = yield* pipe(
    Effect.sleep("5 minutes"),
    Effect.timeout("1 minute"),
    Effect.forkChild
  )
  yield* TestClock.adjust("1 minute")
  const result = yield* Fiber.join(fiber)
  assert.deepStrictEqual(result, Option.none())
})
```

Note how we forked the fiber that `sleep` was invoked on. Calls to `sleep`
and methods derived from it will semantically block until the time is set to
on or after the time they are scheduled to run. If we didn't fork the fiber
on which we called sleep we would never get to set the time on the line
below. Thus, a useful pattern when using `TestClock` is to fork the effect
being tested, then adjust the clock time, and finally verify that the
expected effects have been performed.

**Example**

```ts
import { Effect } from "effect"
import { TestClock } from "effect/testing"

const program = Effect.gen(function*() {
  let executed = false

  // Fork an effect that sleeps for 1 hour
  const fiber = yield* Effect.gen(function*() {
    yield* Effect.sleep("1 hour")
    executed = true
  }).pipe(Effect.forkChild)

  // Advance the test clock by 1 hour
  yield* TestClock.adjust("1 hour")

  // The effect should now be executed
  console.log(executed) // true
})
```

**Signature**

```ts
export interface TestClock extends Clock.Clock {
  /**
   * Increments the current clock time by the specified duration. Any effects
   * that were scheduled to occur on or before the new time will be run in
   * order.
   */
  adjust(duration: Duration.Input): Effect.Effect<void>
  /**
   * Sets the current clock time to the specified `timestamp`. Any effects that
   * were scheduled to occur on or before the new time will be run in order.
   */
  setTime(timestamp: number): Effect.Effect<void>
  /**
   * Executes the specified effect with the live `Clock` instead of the
   * `TestClock`.
   */
  withLive<A, E, R>(effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestClock.ts#L78)

Since v2.0.0