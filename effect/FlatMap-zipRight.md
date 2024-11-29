# zipRight

A variant of `flatMap` that ignores the value produced by this effect.

To import and use `zipRight` from the "FlatMap" module:

ts
import \* as FlatMap from "@effect/typeclass/FlatMap"
// Can be accessed like this
FlatMap.zipRight
undefined

**Signature**

```ts
export declare const zipRight: <F extends TypeLambda>(
  F: FlatMap<F>
) => {
  <R2, O2, E2, B>(
    that: Kind<F, R2, O2, E2, B>
  ): <R1, O1, E1, _>(self: Kind<F, R1, O1, E1, _>) => Kind<F, R1 & R2, O2 | O1, E2 | E1, B>
  <R1, O1, E1, _, R2, O2, E2, B>(
    self: Kind<F, R1, O1, E1, _>,
    that: Kind<F, R2, O2, E2, B>
  ): Kind<F, R1 & R2, O1 | O2, E1 | E2, B>
}
```
