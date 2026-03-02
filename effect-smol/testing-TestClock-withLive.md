Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.withLive

Executes the specified effect with the live `Clock` instead of the
`TestClock`.

**Example**

```ts
import { Clock, Effect } from "effect"
import { TestClock } from "effect/testing"

const program = Effect.gen(function*() {
  // Get the current test time (starts at epoch)
  const testTime = yield* Clock.currentTimeMillis
  console.log(testTime) // 0

  // Get the actual system time using withLive
  const realTime = yield* TestClock.withLive(Clock.currentTimeMillis)
  console.log(realTime) // Actual system timestamp

  // Advance test time
  yield* TestClock.adjust("1 hour")

  // Test time is now 1 hour ahead
  const newTestTime = yield* Clock.currentTimeMillis
  console.log(newTestTime) // 3600000 (1 hour in milliseconds)
})
```

**Signature**

```ts
declare const withLive: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestClock.ts#L500)

Since v2.0.0