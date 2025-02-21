# repetitions

Returns a new schedule that outputs the number of repetitions of this one.

**Details**

This schedule tracks how many times the given schedule has executed and
outputs the count instead of the original values. The first execution starts
at `0`, and the count increases with each recurrence.

To import and use `repetitions` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.repetitions
```

**Signature**

```ts
export declare const repetitions: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<number, In, R>
```
