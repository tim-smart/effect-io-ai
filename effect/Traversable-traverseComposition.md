## traverseComposition

Returns a default binary `traverse` composition.

**Signature**

```ts
declare const traverseComposition: <T extends TypeLambda, G extends TypeLambda>(T: Traversable<T>, G: Traversable<G>) => <F extends TypeLambda>(F: Applicative<F>) => <TR, TO, TE, GR, GO, GE, A, R, O, E, B>(self: Kind<T, TR, TO, TE, Kind<G, GR, GO, GE, A>>, f: (a: A) => Kind<F, R, O, E, B>) => Kind<F, R, O, E, Kind<T, TR, TO, TE, Kind<G, GR, GO, GE, B>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Traversable.ts#L31)

Since v0.24.0