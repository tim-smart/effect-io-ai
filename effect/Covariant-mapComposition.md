Package: `@effect/typeclass`<br />
Module: `Covariant`<br />

## Covariant.mapComposition

Returns a default `map` composition.

**Signature**

```ts
declare const mapComposition: <F extends TypeLambda, G extends TypeLambda>(F: Covariant<F>, G: Covariant<G>) => <FR, FO, FE, GR, GO, GE, A, B>(self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>, f: (a: A) => B) => Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, B>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Covariant.ts#L24)

Since v0.24.0