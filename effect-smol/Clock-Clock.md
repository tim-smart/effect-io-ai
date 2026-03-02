Package: `effect`<br />
Module: `Clock`<br />

## Clock.Clock

Represents a time-based clock which provides functionality related to time
and scheduling.

**Example**

```ts
import { Clock, Effect } from "effect"

const clockOperations = Effect.gen(function*() {
  const currentTime = yield* Clock.currentTimeMillis
  const currentTimeNanos = yield* Clock.currentTimeNanos

  console.log(`Current time (ms): ${currentTime}`)
  console.log(`Current time (ns): ${currentTimeNanos}`)
})
```

**Signature**

```ts
export interface Clock {
  /**
   * Unsafely returns the current time in milliseconds.
   */
  currentTimeMillisUnsafe(): number
  /**
   * Returns the current time in milliseconds.
   */
  readonly currentTimeMillis: Effect<number>
  /**
   * Unsafely returns the current time in nanoseconds.
   */
  currentTimeNanosUnsafe(): bigint
  /**
   * Returns the current time in nanoseconds.
   */
  readonly currentTimeNanos: Effect<bigint>
  /**
   * Asynchronously sleeps for the specified duration.
   */
  sleep(duration: Duration.Duration): Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Clock.ts#L84)

Since v2.0.0