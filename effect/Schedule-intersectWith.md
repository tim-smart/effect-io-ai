# intersectWith

Combines two schedules, continuing only if both want to continue, merging
intervals using a custom function.

**Details**

This function takes two schedules and creates a new schedule that only
continues execution if both schedules allow it. Instead of automatically
using the longer delay (like {@link intersect}), this function applies a
user-provided merge function `f` to determine the next interval between
executions.

The output of the resulting schedule is a tuple containing the outputs of
both schedules, and the input type is the intersection of both schedules'
input types.

To import and use `intersectWith` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.intersectWith
```

**Signature**

```ts
export declare const intersectWith: {
  <Out2, In2, R2>(
    that: Schedule<Out2, In2, R2>,
    f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<[Out, Out2], In & In2, R2 | R>
  <Out, In, R, Out2, In2, R2>(
    self: Schedule<Out, In, R>,
    that: Schedule<Out2, In2, R2>,
    f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals
  ): Schedule<[Out, Out2], In & In2, R | R2>
}
```
