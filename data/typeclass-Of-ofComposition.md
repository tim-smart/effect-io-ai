# ofComposition

Returns a default `of` composition.

Part of the `Of` module, imported from `@effect/data/typeclass/Of`.

**Signature**

```ts
export declare const ofComposition: <F extends TypeLambda, G extends TypeLambda>(
  F: Of<F>,
  G: Of<G>
) => <A>(a: A) => Kind<F, unknown, never, never, Kind<G, unknown, never, never, A>>
```
