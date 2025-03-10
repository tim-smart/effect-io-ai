# mapBothEffect

Transforms both the input and output of a schedule using effectful
computations.

**Details**

This function modifies an existing schedule by applying effectful
transformations to both its input values and its output values. The provided
effectful functions `onInput` and `onOutput` allow you to transform inputs
and outputs using computations that may involve additional logic, resource
access, or side effects.

To import and use `mapBothEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.mapBothEffect
```

**Signature**

```ts
export declare const mapBothEffect: {
  <In2, In, R2, Out, R3, Out2>(options: {
    readonly onInput: (input: In2) => Effect.Effect<In, never, R2>
    readonly onOutput: (out: Out) => Effect.Effect<Out2, never, R3>
  }): <R>(self: Schedule<Out, In, R>) => Schedule<Out2, In2, R2 | R3 | R>
  <Out, In, R, In2, R2, Out2, R3>(
    self: Schedule<Out, In, R>,
    options: {
      readonly onInput: (input: In2) => Effect.Effect<In, never, R2>
      readonly onOutput: (out: Out) => Effect.Effect<Out2, never, R3>
    }
  ): Schedule<Out2, In2, R | R2 | R3>
}
```
