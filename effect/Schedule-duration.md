# duration

A schedule that can recur one time, the specified amount of time into the
future.

To import and use `duration` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.duration
```

**Signature**

```ts
export declare const duration: (duration: Duration.DurationInput) => Schedule<Duration.Duration>
```
