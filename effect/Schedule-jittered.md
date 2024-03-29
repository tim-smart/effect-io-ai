# jittered

Returns a new schedule that randomly modifies the size of the intervals of
this schedule.

Defaults `min` to `0.8` and `max` to `1.2`.

The new interval size is between `min * old interval size` and `max * old
interval size`.

To import and use `jittered` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.jittered
```

**Signature**

```ts
export declare const jittered: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
```
