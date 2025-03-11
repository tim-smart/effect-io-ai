## reduceComposition

Returns a default ternary `reduce` composition.

**Signature**

```ts
declare const reduceComposition: <F extends TypeLambda, G extends TypeLambda>(F: Foldable<F>, G: Foldable<G>) => <FR, FO, FE, GR, GO, GE, A, B>(self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>, b: B, f: (b: B, a: A) => B) => B
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Foldable.ts#L27)

Since v0.24.0