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
  <In2, Env2, In, Out, Env3, Out2>(options: {
    readonly onInput: (input: In2) => Effect.Effect<Env2, never, In>
    readonly onOutput: (out: Out) => Effect.Effect<Env3, never, Out2>
  }): <Env>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env3 | Env, In2, Out2>
  <Env, In, Out, In2, Env2, Env3, Out2>(
    self: Schedule<Env, In, Out>,
    options: {
      readonly onInput: (input: In2) => Effect.Effect<Env2, never, In>
      readonly onOutput: (out: Out) => Effect.Effect<Env3, never, Out2>
    }
  ): Schedule<Env | Env2 | Env3, In2, Out2>
}
```
