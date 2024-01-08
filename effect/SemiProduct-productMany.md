# productMany

Returns a default `productMany` implementation.

To import and use `productMany` from the "SemiProduct" module:

```ts
import * as SemiProduct from "@effect/typeclass/SemiProduct"
// Can be accessed like this
SemiProduct.productMany
```

**Signature**

```ts
export declare const productMany: <F extends TypeLambda>(
  map: {
    <A, B>(f: (a: A) => B): <R, O, E>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, E, B>
    <R, O, E, A, B>(self: Kind<F, R, O, E, A>, f: (a: A) => B): Kind<F, R, O, E, B>
  },
  product: <R1, O1, E1, A, R2, O2, E2, B>(
    self: Kind<F, R1, O1, E1, A>,
    that: Kind<F, R2, O2, E2, B>
  ) => Kind<F, R1 & R2, O1 | O2, E1 | E2, [A, B]>
) => <R, O, E, A>(self: Kind<F, R, O, E, A>, collection: Iterable<Kind<F, R, O, E, A>>) => Kind<F, R, O, E, [A, ...A[]]>
```
