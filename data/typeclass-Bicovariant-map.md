# map

Returns a default `map` implementation.

Part of the `Bicovariant` module, imported from `@effect/data/typeclass/Bicovariant`.

**Signature**

```ts
export declare const map: <F extends TypeLambda>(
  F: Bicovariant<F>
) => {
  <A, B>(f: (a: A) => B): <R, O, E>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, E, B>
  <R, O, E, A, B>(self: Kind<F, R, O, E, A>, f: (a: A) => B): Kind<F, R, O, E, B>
}
```
