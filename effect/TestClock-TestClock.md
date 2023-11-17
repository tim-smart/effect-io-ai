# TestClock

A `TestClock` makes it easy to deterministically and efficiently test effects
involving the passage of time.

Instead of waiting for actual time to pass, `sleep` and methods implemented
in terms of it schedule effects to take place at a given clock time. Users
can adjust the clock time using the `adjust` and `setTime` methods, and all
effects scheduled to take place on or before that time will automatically be
run in order.

For example, here is how we can test `Effect.timeout` using `TestClock`:

```ts
import * as Duration from "effect/Duration"
import * as Effect from "effect/Effect"
import * as Fiber from "effect/Fiber"
import * as TestClock from "effect/TestClock"
import * as Option from "effect/Option"

Effect.gen(function* () {
  const fiber = yield* pipe(Effect.sleep(Duration.minutes(5)), Effect.timeout(Duration.minutes(1)), Effect.fork)
  yield* TestClock.adjust(Duration.minutes(1))
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

To import and use `TestClock` from the "TestClock" module:

```ts
import * as TestClock from "effect/TestClock"
// Can be accessed like this
TestClock.TestClock
```
