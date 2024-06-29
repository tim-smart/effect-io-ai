# testClockWith

Retrieves the `TestClock` service for this test and uses it to run the
specified workflow.

To import and use `testClockWith` from the "TestClock" module:

```ts
import * as TestClock from "effect/TestClock"
// Can be accessed like this
TestClock.testClockWith
```

**Signature**

```ts
export declare const testClockWith: <A, E, R>(
  f: (testClock: TestClock) => Effect.Effect<A, E, R>
) => Effect.Effect<A, E, R>
```
