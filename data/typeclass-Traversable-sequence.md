# sequence

Returns a default `sequence` implementation.

Part of the `Traversable` module, imported from `@effect/data/typeclass/Traversable`.

**Signature**

```ts
export declare const sequence: <T extends TypeLambda>(
  T: Traversable<T>
) => <F extends TypeLambda>(
  F: Applicative<F>
) => <TR, TO, TE, R, O, E, A>(
  self: Kind<T, TR, TO, TE, Kind<F, R, O, E, A>>
) => Kind<F, R, O, E, Kind<T, TR, TO, TE, A>>
```
