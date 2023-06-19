# imapComposition

Returns a default ternary `imap` composition.

Part of the `Invariant` module, imported from `@effect/data/typeclass/Invariant`.

**Signature**

```ts
export declare const imapComposition: <F extends TypeLambda, G extends TypeLambda>(
  F: Invariant<F>,
  G: Invariant<G>
) => <FR, FO, FE, GR, GO, GE, A, B>(
  self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>,
  to: (a: A) => B,
  from: (b: B) => A
) => Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, B>>
```
