# tapInput

Returns a new schedule that runs the given effectful function for each input
before continuing execution.

**Details**

This function allows side effects to be performed on each input processed by
the schedule. It does not modify the schedule’s behavior but ensures that the
provided function `f` runs before each step.

To import and use `tapInput` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.tapInput
```

**Signature**

```ts
export declare const tapInput: {
  <In2, X, R2>(
    f: (input: In2) => Effect.Effect<X, never, R2>
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In & In2, R2 | R>
  <Out, In, R, In2, X, R2>(
    self: Schedule<Out, In, R>,
    f: (input: In2) => Effect.Effect<X, never, R2>
  ): Schedule<Out, In & In2, R | R2>
}
```
