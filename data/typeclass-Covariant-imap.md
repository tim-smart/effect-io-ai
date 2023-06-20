# imap

Returns a default `imap` implementation.

To import and use `imap` from the "Covariant" module:

```ts
import * as Covariant from '@effect/data/typeclass/Covariant'

// Can be accessed like this
Covariant.imap
```

**Signature**

```ts
export declare const imap: <F extends TypeLambda>(
  map: <R, O, E, A, B>(self: Kind<F, R, O, E, A>, f: (a: A) => B) => Kind<F, R, O, E, B>
) => {
  <A, B>(to: (a: A) => B, from: (b: B) => A): <R, O, E>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, E, B>
  <R, O, E, A, B>(self: Kind<F, R, O, E, A>, to: (a: A) => B, from: (b: B) => A): Kind<F, R, O, E, B>
}
```
