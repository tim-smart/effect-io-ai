## ofComposition

Returns a default `of` composition.

**Signature**

```ts
declare const ofComposition: <F extends TypeLambda, G extends TypeLambda>(F: Of<F>, G: Of<G>) => <A>(a: A) => Kind<F, unknown, never, never, Kind<G, unknown, never, never, A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Of.ts#L19)

Since v0.24.0