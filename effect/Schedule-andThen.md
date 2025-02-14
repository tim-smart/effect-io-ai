# andThen

Runs two schedules sequentially, merging their outputs.

**Details**

This function executes two schedules one after the other. The first schedule
runs to completion, and then the second schedule begins execution. Unlike
{@link andThenEither}, this function merges the outputs instead of wrapping
them in `Either`, allowing both schedules to contribute their results
directly.

This is useful when a workflow consists of two phases where the second phase
should start only after the first one has fully completed.

To import and use `andThen` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.andThen
```

**Signature**

```ts
export declare const andThen: {
  <Out2, In2, R2>(
    that: Schedule<Out2, In2, R2>
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out2 | Out, In & In2, R2 | R>
  <Out, In, R, Out2, In2, R2>(
    self: Schedule<Out, In, R>,
    that: Schedule<Out2, In2, R2>
  ): Schedule<Out | Out2, In & In2, R | R2>
}
```
