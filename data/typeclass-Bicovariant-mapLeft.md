# mapLeft

Returns a default `mapLeft` implementation.

Part of the `Bicovariant` module, imported from `@effect/data/typeclass/Bicovariant`.

**Signature**

```ts
export declare const mapLeft: <F extends TypeLambda>(
  F: Bicovariant<F>
) => {
  <E, G>(f: (e: E) => G): <R, O, A>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, G, A>
  <R, O, E, A, G>(self: Kind<F, R, O, E, A>, f: (e: E) => G): Kind<F, R, O, G, A>
}
```
