# appendElement

Appends an element to the end of a tuple.

To import and use `appendElement` from the "SemiProduct" module:

```ts
import * as SemiProduct from '@effect/data/typeclass/SemiProduct'

// Can be accessed like this
SemiProduct.appendElement
```

**Signature**

```ts
export declare const appendElement: <F extends TypeLambda>(
  F: SemiProduct<F>
) => {
  <R2, O2, E2, B>(that: Kind<F, R2, O2, E2, B>): <R1, O1, E1, A extends readonly any[]>(
    self: Kind<F, R1, O1, E1, A>
  ) => Kind<F, R1 & R2, O2 | O1, E2 | E1, [...A, B]>
  <R1, O1, E1, A extends readonly any[], R2, O2, E2, B>(
    self: Kind<F, R1, O1, E1, A>,
    that: Kind<F, R2, O2, E2, B>
  ): Kind<F, R1 & R2, O1 | O2, E1 | E2, [...A, B]>
}
```
