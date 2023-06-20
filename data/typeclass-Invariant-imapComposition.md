# imapComposition

Returns a default ternary `imap` composition.

To import and use `imapComposition` from the "Invariant" module:

```ts
import * as Invariant from '@effect/data/typeclass/Invariant'

// Can be accessed like this
Invariant.imapComposition
```

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
