Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.reduceEffect

Returns a new schedule that effectfully folds over the outputs of this one.

**Details**

This schedule accumulates outputs over time using an effectful reducer
function `f`. It starts with an initial value `zero` and updates it
asynchronously or based on external dependencies.

This is useful for asynchronous state tracking, logging, external metrics
aggregation, or any scenario where accumulation needs to involve an effectful
computation.

**See**

- `reduce` If you need to use a pure reducer function.

**Signature**

```ts
declare const reduceEffect: { <Z, Out, R2>(zero: Z, f: (z: Z, out: Out) => Effect.Effect<Z, never, R2>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Z, In, R2 | R>; <Out, In, R, Z, R2>(self: Schedule<Out, In, R>, zero: Z, f: (z: Z, out: Out) => Effect.Effect<Z, never, R2>): Schedule<Z, In, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1644)

Since v2.0.0