Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.setTime

Sets the current clock time to the specified `timestamp`. Any effects that
were scheduled to occur on or before the new time will be run in order.

**Example**

```ts
import { Duration, Effect } from "effect"
import { TestClock } from "effect/testing"

const program = Effect.gen(function*() {
  let executed = false

  // Fork an effect that sleeps for 2 hours
  const fiber = yield* Effect.gen(function*() {
    yield* Effect.sleep("2 hours")
    executed = true
  }).pipe(Effect.forkChild)

  // Set the clock to a specific timestamp (2 hours from epoch)
  const targetTime = Duration.toMillis(Duration.hours(2))
  yield* TestClock.setTime(targetTime)

  // The effect should now be executed
  console.log(executed) // true
})
```

**Signature**

```ts
declare const setTime: (timestamp: number) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestClock.ts#L467)

Since v2.0.0