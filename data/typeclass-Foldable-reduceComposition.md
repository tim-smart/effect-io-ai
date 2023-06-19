# reduceComposition

Returns a default ternary `reduce` composition.

Part of the `Foldable` module, imported from `@effect/data/typeclass/Foldable`.

**Signature**

```ts
export declare const reduceComposition: <F extends TypeLambda, G extends TypeLambda>(
  F: Foldable<F>,
  G: Foldable<G>
) => <FR, FO, FE, GR, GO, GE, A, B>(self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>, b: B, f: (b: B, a: A) => B) => B
```
