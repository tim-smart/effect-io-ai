# setTime

Accesses a `TestClock` instance in the context and sets the clock time
to the specified `Instant`, running any actions scheduled for on or before
the new time in order.

To import and use `setTime` from the "TestClock" module:

ts
import \* as TestClock from "effect/TestClock"
// Can be accessed like this
TestClock.setTime
undefined

**Signature**

```ts
export declare const setTime: (instant: number) => Effect.Effect<void>
```
