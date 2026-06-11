Package: `effect`<br />
Module: `Clock`<br />

## Clock.Clock

Represents a time-based clock which provides functionality related to time
and scheduling.

**When to use**

Use to define or provide a clock service for current-time and sleep
operations.

**Example** (Reading current time)

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
   * Returns the current time in milliseconds unsafely.
   *
   * **When to use**
   *
   * Use to read millisecond time synchronously when you already have a `Clock`
   * service and can accept non-effectful access.
   */
  currentTimeMillisUnsafe(): number
  /**
   * Returns the current time in milliseconds.
   *
   * **When to use**
   *
   * Use to read millisecond time through this `Clock` service in `Effect`.
   */
  readonly currentTimeMillis: Effect<number>
  /**
   * Returns the current time in nanoseconds unsafely.
   *
   * **When to use**
   *
   * Use to read nanosecond time synchronously when you already have a `Clock`
   * service and can accept non-effectful access.
   */
  currentTimeNanosUnsafe(): bigint
  /**
   * Returns the current time in nanoseconds.
   *
   * **When to use**
   *
   * Use to read nanosecond time through this `Clock` service in `Effect`.
   */
  readonly currentTimeNanos: Effect<bigint>
  /**
   * Asynchronously sleeps for the specified duration.
   *
   * **When to use**
   *
   * Use to delay an `Effect` workflow by a duration through this `Clock` service.
   */
  sleep(duration: Duration.Duration): Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Clock.ts#L40)

Since v2.0.0