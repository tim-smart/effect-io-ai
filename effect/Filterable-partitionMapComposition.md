Package: `@effect/typeclass`<br />
Module: `Filterable`<br />

## Filterable.partitionMapComposition

Returns a default binary `partitionMap` composition.

**Signature**

```ts
declare const partitionMapComposition: <F extends TypeLambda, G extends TypeLambda>(F: Covariant<F>, G: Filterable<G>) => <FR, FO, FE, GR, GO, GE, A, B, C>(self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>, f: (a: A) => Either.Either<C, B>) => [Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, B>>, Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, C>>]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Filterable.ts#L40)

Since v0.24.0