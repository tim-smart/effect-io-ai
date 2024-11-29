# reduceEffect

Returns a new schedule that effectfully folds over the outputs of this one.

To import and use `reduceEffect` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.reduceEffect
undefined

**Signature**

```ts
export declare const reduceEffect: {
  <Z, Out, R2>(
    zero: Z,
    f: (z: Z, out: Out) => Effect.Effect<Z, never, R2>
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Z, In, R2 | R>
  <Out, In, R, Z, R2>(
    self: Schedule<Out, In, R>,
    zero: Z,
    f: (z: Z, out: Out) => Effect.Effect<Z, never, R2>
  ): Schedule<Z, In, R | R2>
}
```
