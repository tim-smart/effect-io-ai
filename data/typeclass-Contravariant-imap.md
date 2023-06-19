# imap

Returns a default `imap` implementation.

Part of the `Contravariant` module, imported from `@effect/data/typeclass/Contravariant`.

**Signature**

```ts
export declare const imap: <F extends TypeLambda>(
  contramap: <R, O, E, A, B>(self: Kind<F, R, O, E, A>, f: (b: B) => A) => Kind<F, R, O, E, B>
) => {
  <A, B>(to: (a: A) => B, from: (b: B) => A): <R, O, E>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, E, B>
  <R, O, E, A, B>(self: Kind<F, R, O, E, A>, to: (a: A) => B, from: (b: B) => A): Kind<F, R, O, E, B>
}
```
