## zipLeft

Sequences the specified effect after this effect, but ignores the value
produced by the effect.

**Signature**

```ts
declare const zipLeft: <F extends TypeLambda>(F: Chainable<F>) => { <R2, O2, E2, _>(that: Kind<F, R2, O2, E2, _>): <R1, O1, E1, A>(self: Kind<F, R1, O1, E1, A>) => Kind<F, R1 & R2, O2 | O1, E2 | E1, A>; <R1, O1, E1, A, R2, O2, E2, _>(self: Kind<F, R1, O1, E1, A>, that: Kind<F, R2, O2, E2, _>): Kind<F, R1 & R2, O1 | O2, E1 | E2, A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Chainable.ts#L23)

Since v0.24.0