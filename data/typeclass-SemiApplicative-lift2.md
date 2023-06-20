# lift2

Lifts a binary function into `F`.

To import and use `lift2` from the "SemiApplicative" module:

```ts
import * as SemiApplicative from '@effect/data/typeclass/SemiApplicative'

// Can be accessed like this
SemiApplicative.lift2
```

**Signature**

```ts
export declare const lift2: <F extends TypeLambda>(
  F: SemiApplicative<F>
) => <A, B, C>(
  f: (a: A, b: B) => C
) => {
  <R2, O2, E2>(that: Kind<F, R2, O2, E2, B>): <R1, O1, E1>(
    self: Kind<F, R1, O1, E1, A>
  ) => Kind<F, R1 & R2, O2 | O1, E2 | E1, C>
  <R1, O1, E1, R2, O2, E2>(self: Kind<F, R1, O1, E1, A>, that: Kind<F, R2, O2, E2, B>): Kind<
    F,
    R1 & R2,
    O1 | O2,
    E1 | E2,
    C
  >
}
```
