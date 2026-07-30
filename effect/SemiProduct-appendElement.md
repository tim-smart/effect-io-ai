Package: `@effect/typeclass`<br />
Module: `SemiProduct`<br />

## SemiProduct.appendElement

Appends an element to the end of a tuple.

**Signature**

```ts
declare const appendElement: <F extends TypeLambda>(F: SemiProduct<F>) => { <R2, O2, E2, B>(that: Kind<F, R2, O2, E2, B>): <R1, O1, E1, A extends ReadonlyArray<any>>(self: Kind<F, R1, O1, E1, A>) => Kind<F, R1 & R2, O2 | O1, E2 | E1, [...A, B]>; <R1, O1, E1, A extends ReadonlyArray<any>, R2, O2, E2, B>(self: Kind<F, R1, O1, E1, A>, that: Kind<F, R2, O2, E2, B>): Kind<F, R1 & R2, O1 | O2, E1 | E2, [...A, B]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/SemiProduct.ts#L118)

Since v0.24.0