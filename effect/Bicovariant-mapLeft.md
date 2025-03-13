Package: `@effect/typeclass`<br />
Module: `Bicovariant`<br />

## Bicovariant.mapLeft

Returns a default `mapLeft` implementation.

**Signature**

```ts
declare const mapLeft: <F extends TypeLambda>(F: Bicovariant<F>) => { <E, G>(f: (e: E) => G): <R, O, A>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, G, A>; <R, O, E, A, G>(self: Kind<F, R, O, E, A>, f: (e: E) => G): Kind<F, R, O, G, A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Bicovariant.ts#L46)

Since v0.24.0