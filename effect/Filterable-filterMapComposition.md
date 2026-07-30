Package: `@effect/typeclass`<br />
Module: `Filterable`<br />

## Filterable.filterMapComposition

Returns a default binary `filterMap` composition.

**Signature**

```ts
declare const filterMapComposition: <F extends TypeLambda, G extends TypeLambda>(F: Covariant<F>, G: Filterable<G>) => <FR, FO, FE, GR, GO, GE, A, B>(self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>, f: (a: A) => Option.Option<B>) => Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, B>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Filterable.ts#L60)

Since v0.24.0