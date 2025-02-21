# union

Combines two schedules, continuing execution as long as at least one of them
allows it, using the shorter delay.

**Details**

This function combines two schedules into a single schedule that executes in
parallel. If either schedule allows continuation, the merged schedule
continues. When both schedules produce delays, the schedule selects the
shorter delay to determine the next step.

The output of the new schedule is a tuple containing the outputs of both
schedules. The input type is the intersection of both schedules' input types.

This is useful for scenarios where multiple scheduling conditions should be
considered, ensuring execution proceeds if at least one schedule permits it.

To import and use `union` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.union
```

**Signature**

```ts
export declare const union: {
  <Out2, In2, R2>(
    that: Schedule<Out2, In2, R2>
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<[Out, Out2], In & In2, R2 | R>
  <Out, In, R, Out2, In2, R2>(
    self: Schedule<Out, In, R>,
    that: Schedule<Out2, In2, R2>
  ): Schedule<[Out, Out2], In & In2, R | R2>
}
```
