# imap

Returns a default `imap` implementation.

To import and use `imap` from the "Covariant" module:

ts
import \* as Covariant from "@effect/typeclass/Covariant"
// Can be accessed like this
Covariant.imap
undefined

**Signature**

```ts
export declare const imap: <F extends TypeLambda>(
  map: <R, O, E, A, B>(self: Kind<F, R, O, E, A>, f: (a: A) => B) => Kind<F, R, O, E, B>
) => Invariant<F>["imap"]
```
