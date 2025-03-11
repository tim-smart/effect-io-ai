## imap

Returns a default `imap` implementation.

**Signature**

```ts
declare const imap: <F extends TypeLambda>(map: <R, O, E, A, B>(self: Kind<F, R, O, E, A>, f: (a: A) => B) => Kind<F, R, O, E, B>) => Invariant<F>["imap"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Covariant.ts#L38)

Since v0.24.0