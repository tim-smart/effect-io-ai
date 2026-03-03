Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.make

Creates a `TestClock` with optional configuration.

**Example**

```ts
import { Effect } from "effect"
import { TestClock } from "effect/testing"

const program = Effect.gen(function*() {
  // Create a TestClock with default settings
  const testClock = yield* TestClock.make()

  // Create a TestClock with custom warning delay
  const customTestClock = yield* TestClock.make({
    warningDelay: "10 seconds"
  })

  // Use the TestClock to control time in tests
  yield* testClock.adjust("1 hour")
  const currentTime = testClock.currentTimeMillisUnsafe()
  console.log(currentTime) // Time advanced by 1 hour
})
```

**Signature**

```ts
declare const make: (options?: TestClock.Options | undefined) => Effect.Effect<{ currentTimeMillisUnsafe: () => number; currentTimeNanosUnsafe: () => bigint; currentTimeMillis: Effect.Effect<number, never, never>; currentTimeNanos: Effect.Effect<bigint, never, never>; adjust: (duration: Duration.Input) => Effect.Effect<void, never, Scope>; setTime: (timestamp: number) => Effect.Effect<void, never, Scope>; sleep: (duration: Duration.Duration) => Effect.Effect<void, never, never>; withLive: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, never>>; }, never, Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestClock.ts#L217)

Since v4.0.0