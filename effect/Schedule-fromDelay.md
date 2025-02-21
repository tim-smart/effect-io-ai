# fromDelay

Creates a schedule that recurs once after a specified duration.

**Details**

This schedule executes a single time after waiting for the given duration.
Once it has executed, it does not repeat.

To import and use `fromDelay` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.fromDelay
```

**Signature**

```ts
export declare const fromDelay: (delay: Duration.DurationInput) => Schedule<Duration.Duration>
```
