# fromDelay

A schedule that recurs once with the specified delay.

To import and use `fromDelay` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.fromDelay
undefined

**Signature**

```ts
export declare const fromDelay: (delay: Duration.DurationInput) => Schedule<Duration.Duration>
```
