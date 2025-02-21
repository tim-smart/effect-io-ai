# recurUpTo

A schedule that recurs until the specified duration has elapsed.

**Details**

This schedule continues executing for the given `duration`, after which it
stops. The schedule outputs the elapsed time on each recurrence.

This is useful for limiting the duration of retries, enforcing time-based
constraints, or ensuring that an operation does not run indefinitely.

To import and use `recurUpTo` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.recurUpTo
```

**Signature**

```ts
export declare const recurUpTo: (duration: Duration.DurationInput) => Schedule<Duration.Duration>
```
