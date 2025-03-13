Package: `@effect/typeclass`<br />
Module: `Chainable`<br />

## Chainable.tap

Returns an effect that effectfully "peeks" at the success of this effect.

**Signature**

```ts
declare const tap: <F extends TypeLambda>(F: Chainable<F>) => { <A, R2, O2, E2, _>(f: (a: A) => Kind<F, R2, O2, E2, _>): <R1, O1, E1>(self: Kind<F, R1, O1, E1, A>) => Kind<F, R1 & R2, O2 | O1, E2 | E1, A>; <R1, O1, E1, A, R2, O2, E2, _>(self: Kind<F, R1, O1, E1, A>, f: (a: A) => Kind<F, R2, O2, E2, _>): Kind<F, R1 & R2, O1 | O2, E1 | E2, A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Chainable.ts#L42)

Since v0.24.0