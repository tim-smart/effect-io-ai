# tapOutput

Returns a new schedule that runs the given effectful function for each output
before continuing execution.

**Details**

This function allows side effects to be performed on each output produced by
the schedule. It does not modify the schedule’s behavior but ensures that the
provided function `f` runs after each step.

To import and use `tapOutput` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.tapOutput
```

**Signature**

```ts
export declare const tapOutput: {
  <X, R2, Out>(
    f: (out: Types.NoInfer<Out>) => Effect.Effect<X, never, R2>
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>
  <Out, In, R, X, R2>(
    self: Schedule<Out, In, R>,
    f: (out: Out) => Effect.Effect<X, never, R2>
  ): Schedule<Out, In, R | R2>
}
```
