# recurUpTo

A schedule that recurs during the given duration.

To import and use `recurUpTo` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.recurUpTo
```

**Signature**

```ts
export declare const recurUpTo: (duration: Duration.DurationInput) => Schedule<never, unknown, Duration.Duration>
```
