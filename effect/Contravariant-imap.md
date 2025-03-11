## imap

Returns a default `imap` implementation.

**Signature**

```ts
declare const imap: <F extends TypeLambda>(contramap: <R, O, E, A, B>(self: Kind<F, R, O, E, A>, f: (b: B) => A) => Kind<F, R, O, E, B>) => Invariant<F>["imap"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Contravariant.ts#L40)

Since v0.24.0