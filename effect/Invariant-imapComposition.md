## imapComposition

Returns a default ternary `imap` composition.

**Signature**

```ts
declare const imapComposition: <F extends TypeLambda, G extends TypeLambda>(F: Invariant<F>, G: Invariant<G>) => <FR, FO, FE, GR, GO, GE, A, B>(self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>, to: (a: A) => B, from: (b: B) => A) => Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, B>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Invariant.ts#L35)

Since v0.24.0