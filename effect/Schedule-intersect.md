# intersect

Combines two schedules, continuing only if both schedules want to continue,
using the longer delay.

**Details**

This function takes two schedules and creates a new schedule that only
continues execution if both schedules allow it. The interval between
recurrences is determined by the longer delay between the two schedules.

The output of the resulting schedule is a tuple containing the outputs of
both schedules. The input type is the intersection of both schedules' input
types.

This is useful when coordinating multiple scheduling conditions where
execution should proceed only when both schedules permit it.

To import and use `intersect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.intersect
```

**Signature**

```ts
export declare const intersect: {
  <Out2, In2, R2>(
    that: Schedule<Out2, In2, R2>
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<[Out, Out2], In & In2, R2 | R>
  <Out, In, R, Out2, In2, R2>(
    self: Schedule<Out, In, R>,
    that: Schedule<Out2, In2, R2>
  ): Schedule<[Out, Out2], In & In2, R | R2>
}
```
