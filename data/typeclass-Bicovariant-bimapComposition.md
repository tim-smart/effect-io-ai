# bimapComposition

Returns a default ternary `bimap` composition.

To import and use `bimapComposition` from the "Bicovariant" module:

```ts
import * as Bicovariant from '@effect/data/typeclass/Bicovariant'

// Can be accessed like this
Bicovariant.bimapComposition
```

**Signature**

```ts
export declare const bimapComposition: <F extends TypeLambda, G extends TypeLambda>(
  CovariantF: Covariant<F>,
  BicovariantG: Bicovariant<G>
) => <FR, FO, FE, GR, GO, E1, A, E2, B>(
  self: Kind<F, FR, FO, FE, Kind<G, GR, GO, E1, A>>,
  f: (e: E1) => E2,
  g: (a: A) => B
) => Kind<F, FR, FO, FE, Kind<G, GR, GO, E2, B>>
```
