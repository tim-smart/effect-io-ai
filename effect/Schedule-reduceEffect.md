# reduceEffect

Returns a new schedule that effectfully folds over the outputs of this one.

To import and use `reduceEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.reduceEffect
```

**Signature**

```ts
export declare const reduceEffect: {
  <Out, Env1, Z>(
    zero: Z,
    f: (z: Z, out: Out) => Effect.Effect<Z, never, Env1>
  ): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env1 | Env, In, Z>
  <Env, In, Out, Env1, Z>(
    self: Schedule<Env, In, Out>,
    zero: Z,
    f: (z: Z, out: Out) => Effect.Effect<Z, never, Env1>
  ): Schedule<Env | Env1, In, Z>
}
```
