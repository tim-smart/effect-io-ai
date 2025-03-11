## zipWith

Zips two `F` values together using a provided function, returning a new `F` of the result.

**Signature**

```ts
declare const zipWith: <F extends TypeLambda>(F: SemiApplicative<F>) => { <R2, O2, E2, B, A, C>(that: Kind<F, R2, O2, E2, B>, f: (a: A, b: B) => C): <R1, O1, E1>(self: Kind<F, R1, O1, E1, A>) => Kind<F, R1 & R2, O2 | O1, E2 | E1, C>; <R1, O1, E1, A, R2, O2, E2, B, C>(self: Kind<F, R1, O1, E1, A>, that: Kind<F, R2, O2, E2, B>, f: (a: A, b: B) => C): Kind<F, R1 & R2, O1 | O2, E1 | E2, C>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/SemiApplicative.ts#L35)

Since v0.24.0