# mapComposition

Returns a default `map` composition.

To import and use `mapComposition` from the "Covariant" module:

ts
import \* as Covariant from "@effect/typeclass/Covariant"
// Can be accessed like this
Covariant.mapComposition
undefined

**Signature**

```ts
export declare const mapComposition: <F extends TypeLambda, G extends TypeLambda>(
  F: Covariant<F>,
  G: Covariant<G>
) => <FR, FO, FE, GR, GO, GE, A, B>(
  self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>,
  f: (a: A) => B
) => Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, B>>
```
