# contramapComposition

Composing two contravariant functors yields a Covariant functor.

Returns a default binary `map` composition.

To import and use `contramapComposition` from the "Contravariant" module:

```ts
import * as Contravariant from "@effect/typeclass/Contravariant"
// Can be accessed like this
Contravariant.contramapComposition
```

**Signature**

```ts
export declare const contramapComposition: <F extends TypeLambda, G extends TypeLambda>(
  F: Contravariant<F>,
  G: Contravariant<G>
) => <FR, FO, FE, GR, GO, GE, A, B>(
  self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>,
  f: (a: A) => B
) => Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, B>>
```
