# sleep

Semantically blocks the current fiber until the clock time is equal to or
greater than the specified duration. Once the clock time is adjusted to
on or after the duration, the fiber will automatically be resumed.

To import and use `sleep` from the "TestClock" module:

ts
import \* as TestClock from "effect/TestClock"
// Can be accessed like this
TestClock.sleep
undefined

**Signature**

```ts
export declare const sleep: (durationInput: Duration.DurationInput) => Effect.Effect<void>
```
