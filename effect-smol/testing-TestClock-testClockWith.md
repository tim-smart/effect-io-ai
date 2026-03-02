Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.testClockWith

Retrieves the `TestClock` service for this test and uses it to run the
specified workflow.

**Example**

```ts
import { Effect } from "effect"
import { TestClock } from "effect/testing"

const program = Effect.gen(function*() {
  // Use testClockWith to access the TestClock instance
  const currentTime = yield* TestClock.testClockWith((testClock) =>
    Effect.succeed(testClock.currentTimeMillisUnsafe())
  )

  // Adjust time using the TestClock instance
  yield* TestClock.testClockWith((testClock) => testClock.adjust("2 hours"))

  console.log(currentTime) // Initial time
})
```

**Signature**

```ts
declare const testClockWith: <A, E, R>(f: (testClock: TestClock) => Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestClock.ts#L400)

Since v2.0.0