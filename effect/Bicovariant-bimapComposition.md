Package: `@effect/typeclass`<br />
Module: `Bicovariant`<br />

## Bicovariant.bimapComposition

Returns a default ternary `bimap` composition.

**Signature**

```ts
declare const bimapComposition: <F extends TypeLambda, G extends TypeLambda>(CovariantF: Covariant<F>, BicovariantG: Bicovariant<G>) => <FR, FO, FE, GR, GO, E1, A, E2, B>(self: Kind<F, FR, FO, FE, Kind<G, GR, GO, E1, A>>, f: (e: E1) => E2, g: (a: A) => B) => Kind<F, FR, FO, FE, Kind<G, GR, GO, E2, B>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Bicovariant.ts#L31)

Since v0.24.0