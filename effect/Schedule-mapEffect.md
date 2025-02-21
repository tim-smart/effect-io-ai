# mapEffect

Returns a new schedule that applies an effectful transformation to its
output.

**Details**

This function modifies an existing schedule by applying an effectful function
`f` to its output values. The timing and recurrence behavior of the schedule
remain unchanged, but each output is mapped to a new value within an
`Effect`.

This is useful when you need to perform side effects or asynchronous
transformations before passing the output forward.

To import and use `mapEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.mapEffect
```

**Signature**

```ts
export declare const mapEffect: {
  <Out, Out2, R2>(
    f: (out: Out) => Effect.Effect<Out2, never, R2>
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out2, In, R2 | R>
  <Out, In, R, Out2, R2>(
    self: Schedule<Out, In, R>,
    f: (out: Out) => Effect.Effect<Out2, never, R2>
  ): Schedule<Out2, In, R | R2>
}
```
