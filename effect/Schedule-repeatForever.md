# repeatForever

Returns a new schedule that loops this one continuously, resetting the
state when this schedule is done.

To import and use `repeatForever` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.repeatForever
```

**Signature**

```ts
export declare const repeatForever: Schedule<never, unknown, number>
```
