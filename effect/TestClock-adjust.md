# adjust

Accesses a `TestClock` instance in the context and increments the time
by the specified duration, running any actions scheduled for on or before
the new time in order.

To import and use `adjust` from the "TestClock" module:

```ts
import * as TestClock from "effect/TestClock"
// Can be accessed like this
TestClock.adjust
```

**Signature**

```ts
export declare const adjust: (durationInput: Duration.DurationInput) => Effect.Effect<void>
```
