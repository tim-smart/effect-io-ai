# imap

Returns a default `imap` implementation.

To import and use `imap` from the "Contravariant" module:

```ts
import * as Contravariant from "@effect/typeclass/Contravariant"
// Can be accessed like this
Contravariant.imap
```

**Signature**

```ts
export declare const imap: <F extends TypeLambda>(
  contramap: <R, O, E, A, B>(self: Kind<F, R, O, E, A>, f: (b: B) => A) => Kind<F, R, O, E, B>
) => Invariant<F>["imap"]
```
