# mapBothEffect

Returns a new schedule that maps both the input and output.

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
