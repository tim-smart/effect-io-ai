# testClock

Retrieves the `TestClock` service for this test.

To import and use `testClock` from the "TestClock" module:

ts
import \* as TestClock from "effect/TestClock"
// Can be accessed like this
TestClock.testClock
undefined

**Signature**

```ts
export declare const testClock: () => Effect.Effect<TestClock>
```
