# spaced

Returns a schedule that recurs continuously, with each repetition
spaced by the specified `duration` from the last run.

**Details**

This schedule ensures that executions occur at a fixed interval,
maintaining a consistent delay between repetitions. The delay starts
from the end of the last execution, not from the schedule start time.

To import and use `spaced` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.spaced
```

**Signature**

```ts
export declare const spaced: (duration: Duration.DurationInput) => Schedule<number>
```
