Package: `@effect/typeclass`<br />
Module: `Contravariant`<br />

## Contravariant.contramapComposition

Composing two contravariant functors yields a Covariant functor.

Returns a default binary `map` composition.

**Signature**

```ts
declare const contramapComposition: <F extends TypeLambda, G extends TypeLambda>(F: Contravariant<F>, G: Contravariant<G>) => <FR, FO, FE, GR, GO, GE, A, B>(self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>, f: (a: A) => B) => Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, B>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Contravariant.ts#L26)

Since v0.24.0