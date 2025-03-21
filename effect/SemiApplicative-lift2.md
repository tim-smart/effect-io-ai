Package: `@effect/typeclass`<br />
Module: `SemiApplicative`<br />

## SemiApplicative.lift2

Lifts a binary function into `F`.

**Signature**

```ts
declare const lift2: <F extends TypeLambda>(F: SemiApplicative<F>) => <A, B, C>(f: (a: A, b: B) => C) => { <R2, O2, E2>(that: Kind<F, R2, O2, E2, B>): <R1, O1, E1>(self: Kind<F, R1, O1, E1, A>) => Kind<F, R1 & R2, O2 | O1, E2 | E1, C>; <R1, O1, E1, R2, O2, E2>(self: Kind<F, R1, O1, E1, A>, that: Kind<F, R2, O2, E2, B>): Kind<F, R1 & R2, O1 | O2, E1 | E2, C>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/SemiApplicative.ts#L114)

Since v0.24.0