# zipLeft

Sequences the specified effect after this effect, but ignores the value
produced by the effect.

To import and use `zipLeft` from the "Chainable" module:

```ts
import * as Chainable from '@effect/data/typeclass/Chainable'

// Can be accessed like this
Chainable.zipLeft
```

**Signature**

```ts
export declare const zipLeft: <F extends TypeLambda>(
  F: Chainable<F>
) => {
  <R2, O2, E2, _>(that: Kind<F, R2, O2, E2, _>): <R1, O1, E1, A>(
    self: Kind<F, R1, O1, E1, A>
  ) => Kind<F, R1 & R2, O2 | O1, E2 | E1, A>
  <R1, O1, E1, A, R2, O2, E2, _>(self: Kind<F, R1, O1, E1, A>, that: Kind<F, R2, O2, E2, _>): Kind<
    F,
    R1 & R2,
    O1 | O2,
    E1 | E2,
    A
  >
}
```
